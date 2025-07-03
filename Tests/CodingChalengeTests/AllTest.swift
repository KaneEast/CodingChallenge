import Testing
@testable import CodingChallenge

struct AllTest {
    let binaryGapChallenge = BinaryGapChallenge()
    let stringReversalChallenge = StringReversalChallenge()

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
}
