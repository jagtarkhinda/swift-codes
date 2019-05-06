//
//  BasePlusCommissionEmployee.swift
//  c0734796-LabTest2
//
//  Created by Jagtar Singh on 2018-07-03.
//  Copyright © 2018 Jagtar Singh. All rights reserved.
//

import Foundation

class BasePlusCommissionEmployee: Employee, Taxable {
    var weeklySalary: Float
    var weeklySales: Float
    var commissionRate: Float
    
    override init(des: String) {
        weeklySales = 0
        commissionRate = 0
        weeklySalary = 1250
        super.init(des: des)

    }
    func salWithCommission(){
        if(weeklySales >= 200)
        {
            commissionRate = 10
            weeklySalary = weeklySalary * ((weeklySalary*commissionRate)/100)
        }
        else if(weeklySales > 300)
        {
            commissionRate = 15
            weeklySalary = weeklySalary * ((weeklySalary*commissionRate)/100)
        }
    }
    
    override func income() -> Float {
        return weeklySalary
    }

}
