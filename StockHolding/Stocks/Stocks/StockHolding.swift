//
//  StockHolding.swift
//  Stocks
//
//  Created by Jagtar Singh on 2018-06-24.
//  Copyright © 2018 Jagtar Singh. All rights reserved.
//

import Cocoa


//======Stock Holding Class======

class StockHolding: NSObject, aProtocol {
    
    var purchaseSharePrice: Float
    var currentSharePrice: Float
    var numberOfShares: Int
    var companyName: String
    
    override init() {
        purchaseSharePrice = 0.0
        currentSharePrice = 0.0
        numberOfShares = 0
        companyName = ""
    }
    
    func costInDollars() -> Float{
        return purchaseSharePrice * Float(numberOfShares)
    }
    
    func valueInDollars() -> Float{
        return currentSharePrice * Float(numberOfShares)
    }
    
}

//======Foreign Stock Holding Class======

class ForeignStockHolding: StockHolding {
    var conversionRate: Float
    
    override init() {
        conversionRate = 0.19
    }
    
    override func costInDollars() -> Float {
        //converting to local currency
        let pp = purchaseSharePrice * conversionRate
        return pp * Float(numberOfShares)
    }
    
    override func valueInDollars() -> Float {
        //converting to local currency
        let cp  = currentSharePrice * conversionRate
        return cp * Float(numberOfShares)
    }
    
    
}


