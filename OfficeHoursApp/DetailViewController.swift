//
//  DetailViewController.swift
//  OfficeHoursApp
//
//  Created by Apple on 3/14/15.
//  Copyright (c) 2015 Sassy Coders Inc. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UITableViewController
{
    var instructor:Instructor = Instructor()
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var dataStrings = [instructor.name, instructor.hours, instructor.office]
        let cell = tableView.dequeueReusableCellWithIdentifier("DetailViewCell", forIndexPath: indexPath) as UITableViewCell
        let item = dataStrings[indexPath.row]
        cell.textLabel?.text = item
        return cell
        
    }
    
}