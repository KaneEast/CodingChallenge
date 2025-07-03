import Foundation

/**
 Description if need
 */

public class BinaryGapChallenge: CodingChallenge {
    init() {}
    func solution(_ N: Int) -> Int {
        // Convert the number to its binary representation
        let binary = String(N, radix: 2)

        // Variables to track the gap lengths
        var maxCount = 0
        var currentCount = 0
        var counting = false

        // Iterate through each character in the binary string
        for value in binary {
            if value == "1" {
                // If we encounter "1" and are currently counting, compare and reset
                if counting {
                    maxCount = max(maxCount, currentCount)
                    currentCount = 0
                }
                // Start counting after encountering the first "1"
                counting = true
            } else if counting {
                // Increment the gap counter when inside a sequence of zeros
                currentCount += 1
            }
        }

        // Return the maximum gap found
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
