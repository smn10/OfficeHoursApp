//
//  Department.swift
//  OfficeHoursApp
//
//  Created by Sultan Nakyp on 2015-03-13.
//  Copyright (c) 2015 Sassy Coders Inc. All rights reserved.
//

import Foundation

class Department {
    let name: String
    //let building: String
    var courses: [String]
    //var courses: [Course]
    
    init (name: String, courses:[String]) {
        self.name = name
      //  self.building = building
        self.courses = courses
    }
}
