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
        sortCourses()
        return self.courses
    }
    
    
    
    func sortCourses(){
        var x, y: Int
        var key : Course
        for x in 0...courses.count - 1{
            key = courses[x]
            for y in x...(-1){
                
            
                if key.code < courses[y].code{
                    courses.removeAtIndex(y+1)
                    courses.insert(key, atIndex:y)
                }
            }
            }
        }
    }

