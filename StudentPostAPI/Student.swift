//
//  Student.swift
//  StudentPostAPI
//
//  Created by Eva Marie Bresciano on 6/7/16.
//  Copyright © 2016 Eva Bresciano. All rights reserved.
//

import Foundation

class Student {
    
    let name: String
    
    var endpoint: NSURL? {
        return
    StudentController.baseURL?.URLByAppendingPathComponent(self.name).URLByAppendingPathExtension("json")
    }
    
    init(name: String) {
        self.name = name
        
    }
    
}
