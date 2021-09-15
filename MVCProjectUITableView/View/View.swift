//
//  View.swift
//  MVCProjectUITableView
//
//  Created by MAC on 14.09.2021.
//

import UIKit

class TableView: UIView {
    
    var data = ModelCell.data
    
    private lazy var tableView: UITableView = {
        var tableView = UITableView(frame: .zero, style: .grouped)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
        tableView.register(SwitchViewCell.self, forCellReuseIdentifier: SwitchViewCell.identifier)
        tableView.register(ArrowWithTextViewCell.self, forCellReuseIdentifier: ArrowWithTextViewCell.identifier)
        return tableView
    }()
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        setupHierarchy()
        setupLayout()
    }
    
    private func setupHierarchy() {
        addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}

extension TableView: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        data.keys.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data["Section\(section)"]?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let data = data["Section\(indexPath.section)"]?[indexPath.row] else { return UITableViewCell() }
        switch data.type {
        case .tableViewCell:
            return setupTableViewCell(for: indexPath, with: data)
        case .arrowWithTextViewCell:
            return setupArrowWithTextViewCell(for: indexPath, with: data)
        case .switchViewCell:
            return setupSwitchViewCell(for: indexPath, with: data)
        }
    }
    
    func setupTableViewCell(for indexPath: IndexPath, with data: ModelCell) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell else { return UITableViewCell() }
        cell.label.text = data.label
        cell.imageView?.image = data.icon
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func setupArrowWithTextViewCell(for indexPath: IndexPath, with data: ModelCell) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ArrowWithTextViewCell.identifier, for: indexPath) as? ArrowWithTextViewCell else { return UITableViewCell() }
        cell.label.text = data.label
        cell.imageView?.image = data.icon
        cell.labelDescription.text = data.labelDescription
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func setupSwitchViewCell(for indexPath: IndexPath, with data: ModelCell) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SwitchViewCell.identifier, for: indexPath) as? SwitchViewCell else { return UITableViewCell() }
        cell.label.text = data.label
        cell.imageView?.image = data.icon
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("Нажата ячейка \(data["Section\(indexPath.section)"]?[indexPath.row].label ?? "Отсутствует значение")")
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
