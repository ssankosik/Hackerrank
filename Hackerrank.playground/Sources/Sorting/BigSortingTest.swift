import Foundation

public struct BigSortingTest:
    HackerrankTestProtocol
{
    private typealias Input = [String]
    private typealias Output = [String]
    
    private static func process(
        i: Input
    ) -> Output {
        i.sorted(by: {
            $0.count == $1.count ? $0 < $1 : $0.count < $1.count
        })
    }
    
    private static func test(
        label: String,
        input: Input,
        output: Output
    ) {
        log(
            label: label,
            process: {
                let result = process(i: input)
                return (output == result, result)
            })
    }
    
    public static func tests() {
        test(
            label: "1",
            input: """
            31415926535897932384626433832795
            1
            3
            10
            3
            5
            """.stringSplit("\n"),
            output: """
            1
            3
            3
            5
            10
            31415926535897932384626433832795
            """.stringSplit("\n"))
        test(
            label: "2",
            input: """
            1
            2
            100
            12303479849857341718340192371
            3084193741082937
            3084193741082938
            111
            200
            """.stringSplit("\n"),
            output: """
            1
            2
            100
            111
            200
            3084193741082937
            3084193741082938
            12303479849857341718340192371
            """.stringSplit("\n"))
    }
}
