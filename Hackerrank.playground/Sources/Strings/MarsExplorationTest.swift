import Foundation

public struct MarsExplorationTest:
    HackerrankTestProtocol
{
    private typealias Input = String
    private typealias Output = Int
    
    private static func process(
        s: Input
    ) -> Output {
        let s = Array(s)
        var t = 0
        for i in 0..<s.count {
            if s[i] != Array("SOS")[i % 3] {
                t += 1
            }
        }
        return t
    }
    
    private static func test(
        label: String,
        input: Input,
        output: Output
    ) {
        log(
            label: label,
            process: {
                let result = process(s: input)
                return (output == result, result)
            })
    }
    
    public static func tests() {
        test(
            label: "1",
            input: "SOSSPSSQSSOR",
            output: 3)
        test(
            label: "2",
            input: "SOSSOT",
            output: 1)
        test(
            label: "3",
            input: "SOSSOSSOS",
            output: 0)
    }
}
