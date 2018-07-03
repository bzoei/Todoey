//
//  ViewController.swift
//  Todoey
//
//  Created by S.P. Oei on 02-07-18.
//  Copyright © 2018 Denovo. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    @IBOutlet var toDoListTableView: UITableView!
    
    let itemArray = ["Get milk", "Finish work", "Eat apples"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK - Tableview Datasource Methods
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }

    // MARK - Tableview Delegate Methods
    
  
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType != .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        } else {
                tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
                tableView.deselectRow(at: indexPath, animated: true)
        }
    
    }
