//
//  SwipeTableViewController.swift
//  Todoey
//
//  Created by J McAuley on 1/24/18.
//  Copyright © 2018 USEngineering Solutions. All rights reserved.
//

import UIKit
import SwipeCellKit
import ChameleonFramework

class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80.0
    }
    
    //MARK: - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SwipeTableViewCell
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }
        
        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            self.updateModel(at: indexPath)
        }
        
        deleteAction.image = UIImage(named: "delete-icon")
        return [deleteAction]
    }
    
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeTableOptions {
        var options = SwipeTableOptions()
        options.expansionStyle = .destructive
        return options
    }
    
    //MARK: Update Model
    
    func updateModel(at indexPath: IndexPath) {
        // Update data model
    }
    
    //MARK: - Navigation Bar Setup Methods
    
    func updateNavigationBar(withHexCode colorHexCode: String) {
        guard let navigationBar = navigationController?.navigationBar else {fatalError("Navigation controller does not exist.")}
        guard let color = UIColor(hexString: colorHexCode) else { fatalError() }
        
        let contrastColor = ContrastColorOf(color, returnFlat: true)
        navigationBar.barTintColor = color
        navigationBar.tintColor = contrastColor
        navigationBar.largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor : contrastColor]
    }
    
}
