//
//  SalariedEmployee.swift
//  c0734796-LabTest2
//
//  Created by Jagtar Singh on 2018-07-02.
//  Copyright © 2018 Jagtar Singh. All rights reserved.
//

import Foundation

class SalariedEmployee: Employee, Taxable{
    
    
    var yearlySalary: Float = 0.0
    
    override init(des: String)
    {
        yearlySalary = 600000.0
        super.init(des: des)
    }
    
    override func income() -> Float {
        let weekSal = yearlySalary/48
        return weekSal
    }
}
