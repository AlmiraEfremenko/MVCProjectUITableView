//
//  Model.swift
//  MVCProjectUITableView
//
//  Created by MAC on 14.09.2021.
//

import Foundation
import UIKit

enum CellType {
    case tableViewCell
    case switchViewCell
    case arrowWithTextViewCell
}

struct ModelCell {
    let type: CellType
    let label: String
    var icon: UIImage
    var labelDescription: String? = nil
}

extension ModelCell {
   
    static var data = [
        
        "Section0":  [ModelCell(
                        type: .switchViewCell,
                        label: "Авиарежим",
                        icon: UIImage(systemName: "airplane")?.withTintColor(.orange, renderingMode: .alwaysOriginal) ?? .add),
                       
                       ModelCell(
                        type: .arrowWithTextViewCell,
                        label: "Wi-Fi",
                        icon: UIImage(systemName: "wifi")?.withTintColor(.blue, renderingMode: .alwaysOriginal) ?? .add,
                        labelDescription: "Не беспокоить"),
                       
                       ModelCell(
                        type: .arrowWithTextViewCell,
                        label: "Bluetooth",
                        icon: UIImage(named: "icons8-блютуз-24")?.withTintColor(.blue, renderingMode: .alwaysOriginal) ?? .add,
                        labelDescription: "Выкл."),
                       
                       ModelCell(
                        type: .tableViewCell,
                        label: "Сотовая связь",
                        icon: UIImage(systemName: "antenna.radiowaves.left.and.right")?.withTintColor(.green, renderingMode: .alwaysOriginal) ?? .add),
                       
                       ModelCell(
                        type: .tableViewCell,
                        label: "Режим модема",
                        icon: UIImage(systemName: "link")?.withTintColor(.green, renderingMode: .alwaysOriginal) ?? .add),
                       
                       ModelCell(
                        type: .switchViewCell,
                        label: "VPN",
                        icon: UIImage(systemName: "arrow.right.arrow.left.circle")?.withTintColor(.blue, renderingMode: .alwaysOriginal) ?? .add)],
        
        "Section1": [ModelCell(
                        type: .tableViewCell,
                        label: "Уведомления",
                        icon: UIImage(systemName: "bubble.left.fill")?.withTintColor(.red, renderingMode: .alwaysOriginal) ?? .add),
                      
                      ModelCell(
                        type: .tableViewCell,
                        label: "Звуки,тактильные сигналы",
                        icon: UIImage(systemName: "speaker.3.fill")?.withTintColor(.red, renderingMode: .alwaysOriginal) ?? .add),
                      
                      ModelCell(
                        type: .tableViewCell,
                        label: "Не беспокоить",
                        icon: UIImage(systemName: "moon.fill")?.withTintColor(.blue, renderingMode: .alwaysOriginal) ?? .add),
                      
                      ModelCell(
                        type: .tableViewCell,
                        label: "Экранное время",
                        icon: UIImage(systemName: "hourglass")?.withTintColor(.blue, renderingMode: .alwaysOriginal) ?? .add)],
        
        "Section2": [ModelCell(
                        type: .tableViewCell,
                        label: "Основные",
                        icon: UIImage(systemName: "gear")?.withTintColor(.gray, renderingMode: .alwaysOriginal) ?? .add),
                      
                      ModelCell(
                        type: .tableViewCell,
                        label: "Пункт управления",
                        icon: UIImage(systemName: "switch.2")?.withTintColor(.gray, renderingMode: .alwaysOriginal) ?? .add),
                      
                      ModelCell(
                        type: .tableViewCell,
                        label: "Экран и яркость",
                        icon: UIImage(systemName: "rays")?.withTintColor(.purple, renderingMode: .alwaysOriginal) ?? .add),
                      
                      ModelCell(
                        type: .tableViewCell,
                        label: "Экран Домой",
                        icon: UIImage(systemName: "textformat.size")?.withTintColor(.purple, renderingMode: .alwaysOriginal) ?? .add),
                      
                      ModelCell(
                        type: .tableViewCell,
                        label: "Универсальный доступ",
                        icon: UIImage(systemName: "person.crop.square.fill")?.withTintColor(.red, renderingMode: .alwaysOriginal) ?? .add)]
    ]
}
