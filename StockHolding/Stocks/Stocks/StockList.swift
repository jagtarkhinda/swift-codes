//
//  StockList.swift
//  Stocks
//
//  Created by Jagtar Singh on 2018-06-27.
//  Copyright © 2018 Jagtar Singh. All rights reserved.
//

import Foundation

class StockList {
   //=========Creating an Array of type Protocol=========
    var stocksInArray: [aProtocol] = []
    
    //=========Creating Instances of StockHolding and ForeignStockHolding=========
    var newSIA = StockHolding()
    var newFSIA = ForeignStockHolding()
    
    var max = true
    
    init() {
       
        //=========New StockHolding Object===========
        newSIA = StockHolding()
        newSIA.purchaseSharePrice = 2
        newSIA.currentSharePrice = 3
        newSIA.numberOfShares = 5
        newSIA.companyName = "A"
        
        //Appending the Array
        stocksInArray.append(newSIA)
        
     
        //=========New StockHolding Object===========
        newSIA = StockHolding()
        newSIA.purchaseSharePrice = 12.19
        newSIA.currentSharePrice = 10.56
        newSIA.numberOfShares = 90
        newSIA.companyName = "B"
        
        //Appending the Array
        stocksInArray.append(newSIA)
        
        
        //=========New StockHolding Object===========
        newSIA = StockHolding()
        newSIA.purchaseSharePrice = 3
        newSIA.currentSharePrice = 2
        newSIA.numberOfShares = 5
        newSIA.companyName = "C"
        
        //Appending the Array
        stocksInArray.append(newSIA)
         
    
        //=========New ForeignStockHolding Object===========
        newFSIA = ForeignStockHolding()
        newFSIA.purchaseSharePrice = 2
        newFSIA.currentSharePrice = 3
        newFSIA.numberOfShares = 5
        newFSIA.companyName = "D"
 
        stocksInArray.append(newFSIA)
 
    }
    
    //=========Functions to call where the same code is required===========
    func codeReuseList1(value: Int)
    {
        print("**************************** \n",
              " Purchase Price  ",stocksInArray[value].purchaseSharePrice,"\n",
              "Current Price   ",stocksInArray[value].currentSharePrice,  "\n",
              "No. Of Shares   ",stocksInArray[value].numberOfShares,  "\n",
              "Cost Of Shares  ",stocksInArray[value].costInDollars(),   "\n",
              "Value Of Shares ",stocksInArray[value].valueInDollars(), "\n",
              "Company Name    ",stocksInArray[value].companyName)
    }
    
    func codeReuseList2()
    {
        for items in stocksInArray
        {
            print("************************* \n",
                  " Purchase Price  ",items.purchaseSharePrice,"\n",
                  "Current Price   ",items.currentSharePrice,"\n",
                  "No. Of Shares   ",items.numberOfShares,"\n",
                  "Cost Of Shares  ",items.costInDollars(),"\n",
                  "Value Of Shares ",items.valueInDollars(),"\n",
                  "Company Name    ",items.companyName, "\n")
        }
        
    }
    
    
    //=========Function to Find lowest Value Stock===========
    func lowestValStock()
    {
        //Sorted using valueInDollars
        stocksInArray.sort{$0.valueInDollars() < $1.valueInDollars()}
        
        //Printing only the First Item
        codeReuseList1(value: 0)
       
    }
    
    //=========Function to Find Highest Value Stock===========
    func highestValStock()
    {
        //Sorted using valueInDollars
        stocksInArray.sort{$0.valueInDollars() > $1.valueInDollars()}
        
        //Printing only the First Item 0
        codeReuseList1(value: 0)
    }
    
    //=========Function to Find the Most Profitable Stock===========
    func mostProfStock(){
        var newval: Float = -100, val: Float = 0.0,count: Int = -1,arrNum: Int = -1
        for items in stocksInArray{
            count = count + 1
            newval = (items.valueInDollars()) - (items.costInDollars())
            if(newval > val)
            {
                arrNum = count
            }
        }
        //Printing the item
        codeReuseList1(value: arrNum)
    }
    
    //=========Function to Find the Least Profitable Stock===========
    func leastProfStock(){
        var newval: Float = 0.0, val: Float = 0.0,count: Int = -1, arrNum: Int = -1
        
        for items in stocksInArray
        {
            count = count + 1
            newval = (items.valueInDollars()) - (items.costInDollars())
            if(newval < val)
            {
                arrNum = count
            }
        }
        //Printing the item
        codeReuseList1(value: arrNum)
    }
    
    //=========Function to Print Stocks by Company Name===========
    func stocksByCompany()
        {
            stocksInArray.sort{$0.companyName < $1.companyName}
            codeReuseList2()
            
        }
    
    //=========Function to Print Stocks by Value===========
    func stocksByValue()
    {
        stocksInArray.sort{$0.valueInDollars() < $1.valueInDollars()}
        codeReuseList2()
        
    }
    
    
    //=========Function to Read Input from User===========
    func consoleRead() -> String  {
        var input = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
        input = input.replacingOccurrences(of: "\n", with: "", options: NSString.CompareOptions.literal, range: nil)
        return input
    }
 
    
   //=========Function to Get Data from User===========
   func askUsers()
   {
      while(max)
      {
        print("How many Shares do you want?")
        let maxVal: Int = Int(consoleRead())!
        if(maxVal <= 8 && maxVal > 0)
        {
            for stocks in 1...maxVal {
            print("Type of Share \(stocks):")
            print("Enter 1 for Local || Enter 2 for Foreign")
            let read = Int(consoleRead())
            
            if(read == 1)
            {
                newSIA = StockHolding() //creating new Instance
                
                print("Enter the Purchase Share Price")
                newSIA.purchaseSharePrice = Float(consoleRead())!
                
                print("Enter the Current Share Price")
                newSIA.currentSharePrice = Float(consoleRead())!
                
                print("Enter Numnber Of Shares")
                newSIA.numberOfShares = Int(consoleRead())!
                
                print("Enter the Company Name")
                newSIA.companyName = consoleRead()
                
                stocksInArray.append(newSIA) //appending to an array
            }
            else if (read == 2)
            {
                newFSIA = ForeignStockHolding() // creating new Instance
                
                print("Enter the Purchase Share Price")
                newFSIA.purchaseSharePrice = Float(consoleRead())!
                
                print("Enter the Current Share Price")
                newFSIA.currentSharePrice = Float(consoleRead())!
                
                print("Enter Numnber Of Shares")
                newFSIA.numberOfShares = Int(consoleRead())!
                
                print("Enter the Company Name")
                newFSIA.companyName = consoleRead()
                
                stocksInArray.append(newFSIA) //appending to an array
            }
        }
        max = false
    }
        else if (maxVal > 8){
        print("Can not Enter more than 8 Shares")
    }
        else{
            print("You have to enter atleast one share to proceed")
        }
    
    }
    }
}





