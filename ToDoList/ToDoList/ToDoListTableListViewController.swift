//
//  ToDoListTableListViewController.swift
//  ToDoList
//
//  Created by Bhargav Nookala on 1/25/15.
//  Copyright (c) 2015 Bhargav Nookala. All rights reserved.
//

import Foundation
import UIKit


class ToDoListTableViewController : UITableViewController {
    var todoItems: NSMutableArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        todoItems = NSMutableArray()
        loadInitialData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadInitialData () {
        var item1 = ToDoItem(itemName: "Buy Milk")
        var item2 = ToDoItem(itemName: "Buy eggs")
        var item3 = ToDoItem(itemName: "Eat pizza")
        
        todoItems.addObject(item1)
        todoItems.addObject(item2)
        todoItems.addObject(item3)
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoItems.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: AnyObject = tableView.dequeueReusableCellWithIdentifier(
            "ListPrototypeCell",
            forIndexPath: indexPath
        ) as UITableViewCell
        
        var todo: ToDoItem = todoItems.objectAtIndex(indexPath.row) as ToDoItem
        cell.textLabel.text = todo.itemName
        
        return cell as UITableViewCell
    }
    
    
    @IBAction func unwindToList (segue: UIStoryboardSegue) {
        
    }
}