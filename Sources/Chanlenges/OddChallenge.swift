//
//  OddChallenge.swift
//  CodingChallenge
//
//  Created by apayyellow on 2025/07/04.
//

import Foundation

/**
 Description if need
 https://app.codility.com/programmers/lessons/2-arrays/odd_occurrences_in_array/
 */

public class OddChallenge: CodingChallenge {
    init() {}
    public func solution(_ A : inout [Int]) -> Int {
        // Implement your solution here
        var set: Set<Int> = []
        for i in A {
            if set.contains(i) {
                set.remove(i)
            } else {
                set.insert(i)
            }
        }
        
        
        return set.first!
    }



    func runTests() {
        let testCases = [529: 4, 15: 0, 32: 0, 1041: 5]
        for (input, expected) in testCases {
            
        }
    }
}
