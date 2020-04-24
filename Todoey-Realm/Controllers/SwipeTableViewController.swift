//
//  SwipeTableViewController.swift
//  Todoey-Realm
//
//  Created by Salah Khaled on 4/22/20.
//  Copyright © 2020 Salah Khaled. All rights reserved.
//

import UIKit
import SwipeCellKit

class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - TableView DataSource
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SwipeTableViewCell
        cell.delegate = self
        return cell
    }
    
    // MARK: - SwipeCell Delegate
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }
        
        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            
            // Handle action by updating model with deletion
            self.updateModel(at: indexPath)
            
        }
        
        // Customize the action appearance
        deleteAction.image = UIImage(named: "delete")
        
        return [deleteAction]
    }
    
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeOptions {
        var options = SwipeOptions()
        
        // Customize the behavior of the swipe actions
        options.expansionStyle = .destructive
        options.transitionStyle = .border
        return options
    }
    
    // MARK: - UpdateModel

    func updateModel(at indexPath: IndexPath) {
        // Update your data model
    }
    
}
