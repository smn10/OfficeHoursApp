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
    
    var departments = DepartmentList()
    
//    var departments = [
//        Department(name: "Computer Science", courses: [Course(code:101), Course(code: 110)]),
//        Department(name: "Mathematics", courses: [Course(code:100), Course(code:101)])
//    ]
//    
    @IBOutlet var depTableView: UITableView!
    
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return departments.departmentBase.count
    }
    
   override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DepViewCell", forIndexPath: indexPath) as UITableViewCell
        let item = departments.departmentBase[indexPath.row]
        cell.textLabel?.text = item.name
        return cell
     }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "DepPressedSegue"){
            
            var path: NSIndexPath = self.depTableView.indexPathForSelectedRow()!
            var rowSelected: NSInteger = path.row
            
            var cvc: CourseViewController = segue.destinationViewController as CourseViewController
            
           cvc.depname = departments.departmentBase[rowSelected].name
           cvc.courses = departments.departmentBase[rowSelected].getCourses()
            
        }
    }
    
    
    
    
    
    //override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        let courses = UINavigationController()
//        courses.sourceType = departments.getCourses()
//        courses.delegate = self
        
//        presentViewController(courses, animated:true, completion: nil)
    //    println("test")
    //}
    

}



