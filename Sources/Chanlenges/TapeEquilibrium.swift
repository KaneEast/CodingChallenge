import Foundation

/**
 Description if need
 A[0] = 3
A[1] = 1
A[2] = 2
A[3] = 4
A[4] = 3
 We can split this tape in four places:

 P = 1, difference = |3 − 10| = 7
 P = 2, difference = |4 − 9| = 5
 P = 3, difference = |6 − 7| = 1
 P = 4, difference = |10 − 3| = 7

 */

struct LSRS {
    var ls: Int
    var rs: Int
    
    var diff: Int {
        abs(ls - rs)
    }
}

public class TapeEquilibrium {
    init() {}
    public func solution(_ A : inout [Int]) -> Int {
        var lsrss: [Int:LSRS] = [:]
        
        guard A.count > 1 && A.count <= 100000 else {
            return -1
        }
        
        var minDiff = 0
        
        var total = A.reduce(0, +)
        for i in 0..<A.count - 1 {
            if i == 0 {
                lsrss[0] = LSRS(ls: A[i], rs: total - A[i])
                minDiff = lsrss[0]!.diff
            } else {
                var ls = lsrss[i-1]!.ls + A[i]
                lsrss[i] = LSRS(ls: ls, rs: total - ls)
                
                minDiff = min(minDiff, lsrss[i]!.diff)
            }
        }
        
        return minDiff
    }
    
    public func solution2(_ A: inout [Int]) -> Int {
        let totalSum = A.reduce(0, +)
        var leftSum = 0
        var minDiff = Int.max
        
        for i in 0..<A.count - 1 {
            leftSum += A[i]
            let rightSum = totalSum - leftSum
            let diff = abs(leftSum - rightSum)
            minDiff = min(minDiff, diff)
        }
        
        return minDiff
    }
}

extension TapeEquilibrium: CodingChallenge {
    func runTests() {
        let testCases = [529: 4, 15: 0, 32: 0, 1041: 5]
        for (input, expected) in testCases {
            
        }
    }
}
