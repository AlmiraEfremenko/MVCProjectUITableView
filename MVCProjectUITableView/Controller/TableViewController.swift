//
//  Controller.swift
//  MVCProjectUITableView
//
//  Created by MAC on 14.09.2021.
//

import UIKit

class TableViewController: UIViewController {
    
    private var tableView: TableView? {
        guard isViewLoaded else { return nil }
        return view as?  TableView
    }
    
    var model: ModelCell?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = TableView()
        
    }
}

private extension TableViewController {
    func configuraView() {
       
    }
}
