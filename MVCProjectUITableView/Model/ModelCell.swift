//
//  ModelCell.swift
//  MVCProjectUITableView
//
//  Created by MAC on 15.09.2021.
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
