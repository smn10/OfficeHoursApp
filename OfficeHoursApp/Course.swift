//
//  Course.swift
//  OfficeHoursApp
//
//  Created by Sultan Nakyp on 2015-03-13.
//  Copyright (c) 2015 Sassy Coders Inc. All rights reserved.
//

import Foundation

class Course {
    let code: Int
    var instructors: [Instructor]
    
    init (code: Int, instructors:[Instructor]) {
        self.code = code
        self.instructors = instructors
    }
}