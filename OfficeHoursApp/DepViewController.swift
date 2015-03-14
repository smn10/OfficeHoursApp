//
//  DepViewController.swift
//  OfficeHoursApp
//
//  Created by Sultan Nakyp on 2015-03-13.
//  Copyright (c) 2015 Sassy Coders Inc. All rights reserved.
//

import Foundation
import UIKit

class DepViewController: UITableViewController {
    var department = [
        Department(name: "Computer Science", courses: ["101", "110", "121", "210"]),
        Department(name: "Mathematics", courses: ["100", "101", "102", "103"])
    ]
    
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return department.count
    }
    
   override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DepViewCell", forIndexPath: indexPath) as UITableViewCell
        let item = department[indexPath.row]
        cell.textLabel?.text = item.name
        return cell
     }
    

}



