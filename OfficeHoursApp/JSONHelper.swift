//
//  JSONHelper.swift
//  OfficeHoursApp
//
//  Created by Sultan Nakyp on 2015-03-14.
//  Copyright (c) 2015 Sassy Coders Inc. All rights reserved.
//

import Foundation

class JSONHelper: NSObject {
    class func readJSON()-> NSDictionary {
        var error:NSError?
        let bundle = NSBundle.mainBundle()
        let path = bundle.pathForResource("OfficeHoursData", ofType: "json")
        let content = NSString(contentsOfFile: path!, encoding: NSUTF8StringEncoding, error: &error)
        
        let data = content?.dataUsingEncoding(NSUTF8StringEncoding)
        let jsonObject: AnyObject? = NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.allZeros, error: &error)
        let jsonDict = jsonObject as NSDictionary
        
        return jsonDict
    }
}