import Testing
@testable import CodingChallenge

struct AllTest {
    let binaryGapChallenge = BinaryGapChallenge()
    let stringReversalChallenge = StringReversalChallenge()
    let cyclicRotationChallenge = CyclicRotationChallenge()

    @Test func test_binaryGapChallenge() async throws {
        #expect(binaryGapChallenge.solution(529) == 4)
        #expect(binaryGapChallenge.solution(15) == 0)
        #expect(binaryGapChallenge.solution(32) == 0)
        #expect(binaryGapChallenge.solution(1041) == 5)
        #expect(binaryGapChallenge.solution(328) == 2)          // 101001000_2
        #expect(binaryGapChallenge.solution(1610612737) == 28)  // 1100000000000000000000000000001_2
        #expect(binaryGapChallenge.solution(805306373) == 25)   // 110000000000000000000000000101_2
        
    }

    @Test func test_stringReversalChallenge() async throws {
        #expect(stringReversalChallenge.solution("swift") == "tfiws")
        #expect(stringReversalChallenge.solution("abc") == "cba")
    }
    
    @Test func test_cyclicRotationChallenge() async throws {
        var input = [3, 8, 9, 7, 6]
        #expect(cyclicRotationChallenge.solution(&input, 1) == [6, 3, 8, 9, 7])
        #expect(cyclicRotationChallenge.solution(&input, 2) == [7, 6, 3, 8, 9])
    }
    
    @Test func test_ToolBox() async throws {
        #expect(uniqueElements(from: [1,1,2]).count == 2)
        #expect(uniqueElementsInOriginalOrder(from: [3,1,1,2,3,1,1,2]) == [3,1,2])

        #expect(cyclicRotation([3, 8, 9, 7, 6], 1) == [6, 3, 8, 9, 7])
        #expect(cyclicRotation(["A", "B", "C"], 2) == ["B","C","A"])
    }
    
}
