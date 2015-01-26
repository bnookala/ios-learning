//
//  File.swift
//  ToDoList
//
//  Created by Bhargav Nookala on 1/25/15.
//  Copyright (c) 2015 Bhargav Nookala. All rights reserved.
//

import Foundation


class ToDoItem {
    var itemName: String!
    var completed: Boolean!
    let creationDate: NSDate!
    
    init (itemName: String) {
        self.itemName = itemName
    }
    
}
