//
//  Instructor.swift
//  OfficeHoursApp
//
//  Created by Sultan Nakyp on 2015-03-13.
//  Copyright (c) 2015 Sassy Coders Inc. All rights reserved.
//

import Foundation

class Instructor {
    let name: String
    let isProf: Bool
    let office: String
    var hours: String
    
    init(name:String, isProf:Bool, office:String, hours:String) {
        self.name = name
        self.isProf = isProf
        self.office = office
        self.hours = hours
    }
}