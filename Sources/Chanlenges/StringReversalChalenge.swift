import Foundation

/**
 Description if need
 */

class StringReversalChallenge: CodingChallenge {
    func solution(_ str: String) -> String {
        return String(str.reversed())
    }

    func runTests() {
        let testCases = ["hello": "olleh", "swift": "tfiws", "abc": "cba"]
        for (input, expected) in testCases {
            let result = solution(input)
            print("StringReversal Test | Input: \(input), Expected: \(expected), Result: \(result), Pass: \(result == expected)")
        }
    }
}
