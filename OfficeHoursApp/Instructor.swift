//
//  Instructor.swift
//  OfficeHoursApp
//
//  Created by Sultan Nakyp on 2015-03-13.
//  Copyright (c) 2015 Sassy Coders Inc. All rights reserved.
//

import Foundation

class Instructor: NSObject {
    let name: String
    let isProf: Bool
    let office: String
    let hours: String
    
    init(dict: NSDictionary) {
        self.name = dict.valueForKey("name") as String
        self.isProf = dict.valueForKey("isProf") as Bool
        self.office = dict.valueForKey("location") as String
        self.hours = dict.valueForKey("time") as String
    }
    
    func getName() -> String {
        return self.name
    }
    
    func getIsProf() -> Bool {
        return self.isProf
    }
    
    func getOffice() -> String {
        return self.office
    }
    
    func getHours() -> String {
        return self.hours
    }
}