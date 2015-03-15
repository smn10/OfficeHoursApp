//
//  CourseViewController.swift
//  OfficeHoursApp
//
//  Created by Apple on 3/14/15.
//  Copyright (c) 2015 Sassy Coders Inc. All rights reserved.
//

import Foundation
import UIKit

class CourseViewController: UITableViewController, UINavigationControllerDelegate {
    
    var courses: [Course] = [Course]()
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
  
    @IBOutlet var courseTableView: UITableView!
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CourseViewCell", forIndexPath: indexPath) as UITableViewCell
        let item = courses[indexPath.row]
        cell.textLabel?.text = String(item.code)
        return cell
    }
    @IBAction func back(sender: AnyObject) {
             dismissViewControllerAnimated(true, completion: nil)
    }
    
    //func fetchCourseData(departmentName:String){
        //let currentDep:Department = departments.findDepartment(departmentName)!
        //self.courses = currentDep.getCourses()
    //}
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "CoursePressedSegue") {
            var path: NSIndexPath = self.courseTableView.indexPathForSelectedRow()!
            var rowSelected: NSInteger = path.row
            
            var ivc: InsViewController = segue.destinationViewController as InsViewController
            
            ivc.instructors = courses[rowSelected].getInstructors()
        }
    }
}

