//
//  Department.swift
//  OfficeHoursApp
//
//  Created by Sultan Nakyp on 2015-03-13.
//  Copyright (c) 2015 Sassy Coders Inc. All rights reserved.
//

import Foundation

class Department: NSObject {
    let name: String
    //let building: String
    var courses: [Course]
    
    init (name: String, courses:[Course]) {
        self.name = name
        //  self.building = building
        self.courses = courses
    }
    
    func getCourses() -> [Course]{
        
        return self.courses
    }
    
    
}

