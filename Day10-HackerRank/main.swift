//
//  main.swift
//  Day10-HackerRank


import Foundation

// 2D arrays time motherFūčkër

let stringOne : String? = "1 1 1 0 0 0"
let stringTwo : String? = "0 1 0 0 0 0"
let stringThree : String? = "1 1 1 0 0 0"
let stringFour : String? = "0 0 2 4 4 0"
let stringFive : String? = "0 0 0 2 0 0"
let stringSix : String? = "0 0 1 2 4 0"

var row1 = stringOne!.characters.split(" ").map(String.init)
var row2 = stringTwo!.characters.split(" ").map(String.init)
var row3 = stringThree!.characters.split(" ").map(String.init)
var row4 = stringFour!.characters.split(" ").map(String.init)
var row5 = stringFive!.characters.split(" ").map(String.init)
var row6 = stringSix!.characters.split(" ").map(String.init)

let arrayOfArrays = [row1, row2, row3, row4, row5, row6]

var maxSum = -1000

for k in 0...arrayOfArrays.count - 3 {
    
    for i in 0...row1.count - 3 {
   
        var hourglassSum = 0
    
        for j in 0..<3 {
            hourglassSum += Int(arrayOfArrays[k][i + j])!
//            print(Int(arrayOfArrays[k][i + j])!)
        }
        
    
        hourglassSum += Int(arrayOfArrays[k + 1][i + 1])!
//        print("middle num = \(Int(arrayOfArrays[k + 1][k + 1])!)")
        
        for j in 0..<3 {
            hourglassSum += Int(arrayOfArrays[k + 2][i + j])!
//            print(Int(arrayOfArrays[k + 2][i + j])!)
        }
        
        if hourglassSum > maxSum {
        
            maxSum = hourglassSum
        }
//        print("hourglassSum \(hourglassSum)")
    }
}
print("maxSum \(maxSum)")
//print(arrayOfArrays)

