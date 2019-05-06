//
//  aProtocol.swift
//  Stocks
//
//  Created by Jagtar Singh on 2018-06-29.
//  Copyright © 2018 Jagtar Singh. All rights reserved.
//

import Foundation

protocol aProtocol {
    var purchaseSharePrice: Float { get set }
    var currentSharePrice: Float { get set }
    var numberOfShares: Int { get set }
    var companyName: String { get set }
    func costInDollars() -> Float
    func valueInDollars() -> Float
}
