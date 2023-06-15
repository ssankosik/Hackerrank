import Foundation

extension String {
    public func stringSplit(_ separator: String) -> [String] {
        split(separator: separator).map({ String($0) })
    }
}

struct Hackerrank {
    private static let all: [String: [HackerrankTestProtocol.Type]] = [
//        "Warmup": [
//            SolveMeFirstTest.self,
//            SimpleArraySumTest.self,
//            CompareTripletsTest.self,
//            AVeryBigSumTest.self,
//            DiagonalDifferenceTest.self,
//            PlusMinusTest.self,
//            StaircaseTest.self,
//            BirthdayCakeCandlesTest.self,
//            TimeConversionTest.self
//            MiniMaxSumTest.self,
//        ],
//        "Strings": [
//            SuperReducedStringTest.self,
//            CamelCaseTest.self,
//            StrongPasswordTest.self,
//            CaesarCipherTest.self,
//            MarsExplorationTest.self,
//            HackerRankInStringTest.self,
//            PangramsTest.self,
//            FunnyStringTest.self,
//            GemStonesTest.self,
//            AlternatingCharactersTest.self,
//            BeautifulBinaryStringTest.self,
//            TheLoveLetterMysteryTest.self,
//            AnagramTest.self,
//            GameOfThronesTest.self,
//            SeparateNumbersTest.self,
//            PalindromeIndexTest.self,
//            MakingAnagramsTest.self,
//            TwoStringsTest.self,
//            StringConstructionTest.self,
//            TwoCharactersTest.self,
//            GameOfThrones1Test.self,
//            WeightedUniformStringsTest.self,
//        ],
        "sorting": [
//            BigSortingTest.self,
//            InsertionSort1Test.self,
//            InsertionSort2Test.self,
//            InsertionSort3Test.self,
//            InsertionSort4Test.self,
//            QuickSort1Test.self,
//            QuickSort2Test.self,
//            QuickSort3Test.self,
//            QuickSort4Test.self,
//            CountingSort1Test.self,
//            CountingSort2Test.self,
//            CountingSort3Test.self,
//            CountingSort4Test.self,
//            SortingTutorialTest.self,
//            ClosestNumbersTest.self,
//            FindMedianTest.self,
        ],
    ]
    
    static func tests() {
        for i in all {
            guard
                i.value.count > 0
            else { return }
            print("----------")
            print(i.key)
            print("----------")
            i.value.forEach({
                print(String(describing: $0))
                $0.tests()
            })
        }
    }
}

Hackerrank.tests()
