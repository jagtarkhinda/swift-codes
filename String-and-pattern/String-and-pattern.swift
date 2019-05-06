//
//  main.swift
//  LabTest
//
//  Created by Jagtar Singh on 2018-06-22.
//  Copyright © 2018 Jagtar Singh. All rights reserved.
//

import Foundation


//==========PART 1 STARTS HERE===============


//var input = " "
var square = 0
var input = ""
var i = ""
var j = 1

print (" Enter the size of square:" )

input = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
input = input.replacingOccurrences(of: "\n", with: "", options: NSString.CompareOptions.literal, range: nil)

square = Int(input)!

for i in 1...square
{
    for j in 1...square*2
    {
        if(j == square+1)
        {
            print(" ", terminator:"")
        }
        if( (i != 1) && (i != square))
            {
                if ( (j > square+1) && (j < (square*2)))
                {
                    print(" ", terminator:"")
                }
                else
                {
                    print("*", terminator:"")
                }
            }
        else
        {
            print("*", terminator:"")
        }
    }
    print("")
    
}
//==========PART 1 ENDS HERE===============







//==========PART 2 STARTS HERE=============

var myString = ""

func countString(s: String) -> String
{
    var characterCount =  (s.count)
    let wordsCount = (s.characters.filter{$0 == " "}.count) + 1
    characterCount = (characterCount - wordsCount)
    return ("Number of characters: \(characterCount)" + "and number of words: \(wordsCount)")
}

print (" Enter the string" )
myString = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String

var showReturn = countString(s: myString)
print(showReturn)


//==========PART 2 ENDS HERE=============

























