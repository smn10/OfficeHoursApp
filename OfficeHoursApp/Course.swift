//
//  Course.swift
//  OfficeHoursApp
//
//  Created by Sultan Nakyp on 2015-03-13.
//  Copyright (c) 2015 Sassy Coders Inc. All rights reserved.
//

import Foundation

class Course: NSObject {
    let code: Int
    var instructors: [Instructor] = []
    
    init (dict: NSDictionary) {
        self.code = dict.valueForKey("code") as Int
        var instructorList: NSArray? = (dict["instructors"] as NSArray)
        var i: Int
        for (i = 0; i < instructorList!.count; i++) {
            self.instructors.append(Instructor(dict: instructorList![i] as NSDictionary))
        }
    }
    
    func getCode() -> Int {
        return self.code
    }
    
    func getInstructors() -> [Instructor] {
        return self.instructors
    }
    
}