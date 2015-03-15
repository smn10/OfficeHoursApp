//
//  DepartmentList.swift
//  OfficeHoursApp
//
//  Created by Apple on 3/14/15.
//  Copyright (c) 2015 Sassy Coders Inc. All rights reserved.
//

import Foundation
import UIKit

class DepartmentList: NSObject {
    let departmentBase = [  // List of all departments
        Department(name: "Computer Science", courses: [
            Course(code: 110),
            Course(code: 121)]),
            Department(name: "Math", courses: [
                Course(code: 100),
                Course(code: 101)])
    ]
    
    
    
    func findDepartment(name: String) -> Department?{
        for i in 0...(departmentBase.count - 1) {
            if (departmentBase[i] == name){
                return departmentBase[i]
            }
        }
        return nil
    }
}
