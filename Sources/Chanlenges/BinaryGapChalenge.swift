import Foundation

/**
 Description if need
 */

public class BinaryGapChallenge: CodingChallenge {
    init() {}
    func solution(_ N: Int) -> Int {
        let binary = String(N, radix: 2)
        
        var counting = false
        var maxCount = 0
        var currentCount = 0

        for value in binary {
            if !counting {
                if value == "1" {
                    counting = true
                    currentCount = 0
                }
            } else {
                if value == "1" {
                    counting = false
                    maxCount = max(maxCount, currentCount)
                } else {
                    currentCount += 1
                }
            }
        }
        return maxCount
    }

    func runTests() {
        let testCases = [529: 4, 15: 0, 32: 0, 1041: 5]
        for (input, expected) in testCases {
            let result = solution(input)
            print("BinaryGap Test | Input: \(input), Expected: \(expected), Result: \(result), Pass: \(result == expected)")
        }
    }
}
