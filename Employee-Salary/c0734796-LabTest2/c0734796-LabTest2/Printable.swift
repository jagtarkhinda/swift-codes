//
//  Printable.swift
//  c0734796-LabTest2
//
//  Created by Jagtar Singh on 2018-07-02.
//  Copyright © 2018 Jagtar Singh. All rights reserved.
//

import Foundation

protocol Printable{
    var EmpID: Int {get set }
    var FirstName: String {get set }
    var LastName: String {get set }
    var description: String {get set}
}
