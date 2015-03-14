//
//  DepViewController.swift
//  OfficeHoursApp
//
//  Created by Sultan Nakyp on 2015-03-13.
//  Copyright (c) 2015 Sassy Coders Inc. All rights reserved.
//

import Foundation
import UIKit

class DepViewController: UITableViewController, UINavigationControllerDelegate {
    var department = [
        Department(name: "Computer Science", courses: [Course(name:"101"), Course(name:"110")]),
        Department(name: "Mathematics", courses: [Course(name:"100"), Course(name:"101")])
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
//    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        let courses = department[indexPath.row].getCourses()
//        courses.delegate = self
//        presentViewController(courses, animated:true, completion: nil)
//    }
    

}



