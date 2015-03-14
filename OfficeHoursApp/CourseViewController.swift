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
    var courses = [Course(name:"100"),
        Course (name: "101"),
        Course (name: "102")]
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
    @IBAction func back(sender: AnyObject) {
      dismissViewControllerAnimated(true, completion: nil)
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CourseViewCell", forIndexPath: indexPath) as UITableViewCell
        let item = courses[indexPath.row]
        cell.textLabel?.text = item.name
        return cell
    }
}
