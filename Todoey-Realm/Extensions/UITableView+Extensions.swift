//
//  UITableView+Extensions.swift
//  Todoey-Realm
//
//  Created by Salah Khaled on 4/24/20.
//  Copyright © 2020 Salah Khaled. All rights reserved.
//

import UIKit

extension UITableView {
    
    func dequeue<Cell: UITableViewCell>(cellClass: Cell.Type) -> Cell {
        let identifier = String(describing: cellClass.self)
        guard let cell = self.dequeueReusableCell(withIdentifier: identifier) as? Cell else {
            fatalError("Error in cell")
        }
        return cell
    }
}

