//
//  FrogJmp.swift
//  CodingChallenge
//
//  Created by apayyellow on 2025/07/04.
//

import Foundation

/**
 Description if need
 https://app.codility.com/programmers/lessons/2-arrays/odd_occurrences_in_array/
 */

public class FrogJmpChallenge: CodingChallenge {
    init() {}
    func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
        var x = X
        var step = 0
        while x < Y {
            x = x + D
            step = step + 1
        }
        
        return step
    }



    func runTests() {
        let testCases = [529: 4, 15: 0, 32: 0, 1041: 5]
        for (input, expected) in testCases {
            
        }
    }
}
