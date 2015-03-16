//
//  Department.swift
//  OfficeHoursApp
//
//  Created by Sultan Nakyp on 2015-03-13.
//  Copyright (c) 2015 Sassy Coders Inc. All rights reserved.
//

import Foundation

class Department: NSObject {
    var dict = JSONHelper.readJSON()
    let name: String
    var courses: [Course] = []
    
    init (dict: NSDictionary) {
        self.name = dict.valueForKey("department") as String
        var courseList: NSArray? = (dict["courses"] as NSArray)
        var i: Int
        for (i = 0; i < courseList!.count; i++) {
            self.courses.append(Course(dict: courseList![i] as NSDictionary))
        }
    }
    
    func getDepartmentName() -> String {
        return self.name     
    }
    
    func getCourses() -> [Course]{
        return self.courses
    }
    
}

