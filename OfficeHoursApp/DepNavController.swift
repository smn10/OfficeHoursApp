//
//  DepNavController.swift
//  OfficeHoursApp
//
//  Created by Apple on 3/13/15.
//  Copyright (c) 2015 Sassy Coders Inc. All rights reserved.
//

import Foundation
import UIKit

class DepNavController: UINavigationController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Departments"; /// Doesnt like @"Departments"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}
