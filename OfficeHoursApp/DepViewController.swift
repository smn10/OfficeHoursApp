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
    
    var department = [Department()]
    
    @IBOutlet var depTableView: UITableView!
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return department.count
    }
    
   override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DepViewCell", forIndexPath: indexPath) as UITableViewCell
        let item = department[indexPath.row]
        cell.textLabel?.text = item.name
        return cell
     }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "DepPressedSegue"){    
            
            var path: NSIndexPath = self.depTableView.indexPathForSelectedRow()!
            var rowSelected: NSInteger = path.row
            
            var cvc: CourseViewController = segue.destinationViewController as CourseViewController
            
           cvc.courses = department[rowSelected].getCourses()
            
        }
    }
    

}



