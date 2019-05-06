//
//  main.swift
//  Stocks
//
//  Created by Jagtar Singh on 2018-06-24.
//  Copyright © 2018 Jagtar Singh. All rights reserved.
//

import Foundation

//=========Creating Instance of StockList===========
var SL = StockList()

//=========Calling askUsers method===========
SL.askUsers()

//=========Printing Menu for User===========
var condition = true
 var input = 0
 while(condition)
 {
 print("   ")
 print("1   Display stock information with the lowest value ")
 print("2   Display stock with the highest value")
 print("3   Display the most profitable stock")
 print("4   Display the least profitable stock")
 print("5   List all stocks sorted by company name (A-Z)")
 print("6   List all stocks sorted from the lowest value to the highest value")
 print("7   Exit")
 print("   ")
 input = Int(SL.consoleRead())!
  switch(input)
 {
  case 1:
    SL.lowestValStock()
  case 2:
    SL.highestValStock()
  case 3:
    SL.mostProfStock()
  case 4:
    SL.leastProfStock()
  case 5:
    SL.stocksByCompany()
  case 6:
    SL.stocksByValue()
  case 7:
    condition = false
  default:
    print("Please Enter the valid Input")
}
    
}
 
 
