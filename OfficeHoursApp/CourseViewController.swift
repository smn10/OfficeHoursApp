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
    var depname = ""
    let departments = DepartmentList() //
    var courses: [Course] = [Course]()
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CourseViewCell", forIndexPath: indexPath) as UITableViewCell
        let item = courses[indexPath.row]
        cell.textLabel?.text = String(item.code)
        return cell
    }
    
    func fetchCourseData(departmentName:String){
        let currentDep:Department = departments.findDepartment(departmentName)!
        self.courses = currentDep.getCourses()
    }
}

//
//class CourseViewController: UITableViewController {
//    var department = "Hello"
//    let departments: [Department]
//    var courses = department
//    
//    
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return courses.count
//    }
//    
//    @IBAction func back(sender: AnyObject) {
//      dismissViewControllerAnimated(true, completion: nil)
//    }
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier("CourseViewCell", forIndexPath: indexPath) as UITableViewCell
//        let item = courses[indexPath.row]
//        cell.textLabel?.text = String(item.code)
//        return cell
//    }
//}
