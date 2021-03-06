//
//  InsViewController.swift
//  OfficeHoursApp
//
//  Created by Apple on 3/14/15.
//  Copyright (c) 2015 Sassy Coders Inc. All rights reserved.
//

import Foundation
import UIKit

class InsViewController: UITableViewController, UINavigationControllerDelegate {
    
    var instructors: [Instructor] = [Instructor]()
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return instructors.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("InsViewCell", forIndexPath: indexPath) as UITableViewCell
        let item = instructors[indexPath.row]
        cell.textLabel?.text = String(item.name)
        return cell
    }
    
    @IBAction func back(sender: AnyObject){
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "InsPressedSegue"){
            var path: NSIndexPath = self.tableView.indexPathForSelectedRow()!
            var rowSelected: NSInteger = path.row
            var dvc: DetailViewController = segue.destinationViewController as DetailViewController
            
            dvc.instructor = instructors[rowSelected]
    }
    }
    
}