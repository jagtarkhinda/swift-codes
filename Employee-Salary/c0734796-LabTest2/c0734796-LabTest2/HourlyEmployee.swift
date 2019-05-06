//
//  HourlyEmployee.swift
//  c0734796-LabTest2
//
//  Created by Jagtar Singh on 2018-07-03.
//  Copyright © 2018 Jagtar Singh. All rights reserved.
//

import Foundation

class HourlyEmployee: Employee, Taxable{
    
    var hourlyRate: Float
    var hoursWorked: Float
    
    override init(des: String) {
        hourlyRate = 16
        hoursWorked = 8
        super.init(des: des)
    }
    
    override func income() -> Float {
        let weekSal = (hourlyRate * hoursWorked) * 7
        return weekSal
    }
}
