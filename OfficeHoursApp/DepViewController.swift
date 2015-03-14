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
    var department = [ Department(name: "compsci"),
    Department(name: "Math")]
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //code here
        return department.count
    }
    
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        //code here
//        
//    }
}



