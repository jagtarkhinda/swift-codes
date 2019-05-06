//
//  main.swift
//  c0734796-LabTest2
//
//  Created by Jagtar Singh on 2018-07-02.
//  Copyright © 2018 Jagtar Singh. All rights reserved.
//

import Foundation

var empArray: [Employee] = []
var arrOfIncome: [Float] = []
var hourly = HourlyEmployee(des: "Employee 1 with per Hour Salary")
var salaried = SalariedEmployee(des: "Employee 1 with yearly Salary")
var baseCom = BasePlusCommissionEmployee(des: "Employee 1 with comission")


//****Objects of type Hourly
hourly.EmpID = 1
hourly.FirstName = "A"
hourly.LastName = "S"
hourly.hourlyRate = 16
hourly.hoursWorked = 8
empArray.append(hourly)

hourly = HourlyEmployee(des: "Employee 2 with per Hour Salary")
hourly.EmpID = 2
hourly.FirstName = "B"
hourly.LastName = "S"
hourly.hourlyRate = 14
hourly.hoursWorked = 8
empArray.append(hourly)

//****Objects of type Salaried
salaried.EmpID = 3
salaried.FirstName = "C"
salaried.LastName = "S"
salaried.yearlySalary = 60000.0
empArray.append(salaried)

salaried = SalariedEmployee(des: "Employee 2 with yearly Salary")
salaried.EmpID = 4
salaried.FirstName = "D"
salaried.LastName = "S"
salaried.yearlySalary = 50000.0
empArray.append(salaried)

//****Objects of type BaseComission

baseCom.EmpID = 5
baseCom.FirstName = "D"
baseCom.LastName = "S"
baseCom.commissionRate = 10
baseCom.weeklySales = 200
empArray.append(baseCom)

baseCom = BasePlusCommissionEmployee(des: "Employee 2 with comission")
baseCom.EmpID = 6
baseCom.FirstName = "D"
baseCom.LastName = "S"
baseCom.commissionRate = 15
baseCom.weeklySales = 315
empArray.append(baseCom)

func repeatIt()
{
    for i in empArray
    {
        let icome = i.income()
        print("Employee ID: ",i.EmpID, "\n",
              "Employee First Name: ",i.FirstName, "\n",
              "Employee Last Name: ",i.LastName, "\n",
              "Employee Description: ",i.description, "\n",
              "Income: ",icome, "\n")
    }
}

 print("*********Showing Employees in Serial Order")
repeatIt()


empArray.sort{$0.income() < $1.income()}
 print("*********Showing Employees in Low to High Income Order")
repeatIt()

empArray.sort{$0.income() > $1.income()}
print("*********Showing Employees in High to Low Income Order")
repeatIt()
