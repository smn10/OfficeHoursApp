//
//  CourseViewController.swift
//  OfficeHoursApp
//
//  Created by Apple on 3/14/15.
//  Copyright (c) 2015 Sassy Coders Inc. All rights reserved.
//

import Foundation
import UIKit


class CourseViewController: UITableViewController {
    var math = ["100", "101", "102"]
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return math.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CourseViewCell", forIndexPath: indexPath) as UITableViewCell
        
        for i in 1...math.count{
            let item = math[indexPath.row]
            cell.textLabel?.text = item.name
            
        }
        
        return cell
        
    }
}
