//
//  ViewController.swift
//  todoey
//
//  Created by Joseph Jung on 1/2/19.
//  Copyright © 2019 Joseph Jung. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    
    let itemArray = ["Find Mike",  "Buy Eggos", " Destroy Demogorgon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK - Tableview Datasource Methods
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    //MARK TableView Delegate Methods
     // method to obtain the row of the table selected (touched)
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(indexPath.row)
        //print(itemArray[indexPath.row])
        //tableView.cellForRow(at: indexPath)?.accessoryType =    .checkmark
        
        
        if  tableView.cellForRow(at: indexPath)?.accessoryType ==   .checkmark {
             tableView.cellForRow(at: indexPath)?.accessoryType =    .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType =    .checkmark
        }

        tableView.deselectRow(at: indexPath, animated: true)
        
    }
}

