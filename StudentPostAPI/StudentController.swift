//
//  StudentController.swift
//  StudentPostAPI
//
//  Created by Eva Marie Bresciano on 6/7/16.
//  Copyright © 2016 Eva Bresciano. All rights reserved.
//

import Foundation

class StudentController {
    
    static let baseURL = NSURL(string:"https://mykestudentapi.firebaseio.com/students")
    
    static let getterEndpoint = baseURL?.URLByAppendingPathExtension("json")
    
    static func getStudents(completion: (students: [Student]) -> Void) {
        guard let url = getterEndpoint else {
            return
        }
        NetworkController.performRequestForURL(url, httpMethod: .Get) { (data, error) in
            guard let data = data,
            jsonDictionary = (try? NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments)) as? [String:AnyObject],
            mykeStudents = jsonDictionary["group_myke"] as? [String] else {
                completion(students: [])
                return
            }
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                let bestStudents = mykeStudents.flatMap({Student(name: $0)})
                completion(students: bestStudents)
            })

        }
        
    }
    
}
    
