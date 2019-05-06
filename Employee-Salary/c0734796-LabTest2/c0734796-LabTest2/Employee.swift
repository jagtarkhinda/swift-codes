//
//  Employee.swift
//  c0734796-LabTest2
//
//  Created by Jagtar Singh on 2018-07-02.
//  Copyright © 2018 Jagtar Singh. All rights reserved.
//

import Foundation

class Employee{
    
    var EmpID = 0
    var FirstName = ""
    var LastName = ""
    var description: String = "Mobile Application Developer"
    
    init(des: String)
    {
       EmpID = 1
       FirstName = "Jagtar"
       LastName = "Singh"
       description = des
    }
    
    func income() -> Float
    {
        return 0.0
    }
    
    
    
    
}
