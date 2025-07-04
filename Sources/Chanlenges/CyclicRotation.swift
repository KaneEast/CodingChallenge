import Foundation

/**
 CyclicRotationChallenge
 [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
 [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
 [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]
 */

public class CyclicRotationChallenge: CodingChallenge {
    init() {}
    func solution(_ A : inout [Int], _ K : Int) -> [Int] {
        let length = A.count
        
        var dict: [Int:Int] = [:]
        
        for (i, v) in A.enumerated() {
            dict[destIndex(index: i, length: length, move: K)] = v
        }
        var result: [Int] = []
        for v in dict.sorted(by: {$0.key < $1.key}) {
            result.append(v.value)
        }
        return result
    }
    
    func destIndex(index: Int, length: Int, move: Int) -> Int {
        (index + move) % length
    }



    func runTests() {
        let testCases = [529: 4, 15: 0, 32: 0, 1041: 5]
        for (input, expected) in testCases {
//            let result = solution(input)
//            print("BinaryGap Test | Input: \(input), Expected: \(expected), Result: \(result), Pass: \(result == expected)")
        }
    }
}
