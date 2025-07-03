// Specify which test to run
let allChallenges: [CodingChallenge] = [
    BinaryGapChallenge(),
    StringReversalChallenge()
]

allChallenges.forEach {
    $0.runTests()
}
