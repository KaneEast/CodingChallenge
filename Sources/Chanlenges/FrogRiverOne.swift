import Foundation

/**
 A[0] = 1
  A[1] = 3
  A[2] = 1
  A[3] = 4
  A[4] = 2
  A[5] = 3
  A[6] = 5
  A[7] = 4
the function should return 6, as explained above.
 */

class FrogRiverOne: CodingChallenge {
    public func solution(_ X : Int, _ A : inout [Int]) -> Int {
        
        for (i,v) in A.enumerated() {
            if v >= X {
                if i == 0 {
                    return 0
                }
                return i
            }
        }
        return -1
    }

    func runTests() {
        let testCases = ["hello": "olleh", "swift": "tfiws", "abc": "cba"]
        for (input, expected) in testCases {
            
        }
    }
}
