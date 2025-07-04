//
//  PermMissingElem.swift
//  CodingChallenge
//
//  Created by apayyellow on 2025/07/04.
//

import Foundation

/**
 Description if need
A[0] = 2
A[1] = 3
A[2] = 1
A[3] = 5

 */

public class PermMissingElem: CodingChallenge {
    init() {}
    public func solution(_ A : inout [Int]) -> Int {
        let N = A.count
            
        // Handle the empty case
        if N == 0 {
            return 1
        }
        
        // Calculate the expected sum of the range [1..(N + 1)]
        let totalSum = (N + 1) * (N + 2) / 2
        
        // Calculate the actual sum of the array
        let actualSum = A.reduce(0, +)
        
        // The missing element is the difference
        return totalSum - actualSum
    }



    func runTests() {
        let testCases = [529: 4, 15: 0, 32: 0, 1041: 5]
        for (input, expected) in testCases {
            
        }
    }
}
