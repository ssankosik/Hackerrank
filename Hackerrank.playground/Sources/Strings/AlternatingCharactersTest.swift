import Foundation

public struct AlternatingCharactersTest:
    HackerrankTestProtocol
{
    private typealias Input = String
    private typealias Output = Int
    
    private static func process(
        s: Input
    ) -> Output {
        var r = 0
        var p = ""
        for c in s {
            let c = String(c)
            if c == p {
                r += 1
            } else {
                p = c
            }
        }
        return r
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
            input: "AAAA",
            output: 3)
        test(
            label: "2",
            input: "BBBBB",
            output: 4)
        test(
            label: "3",
            input: "ABABABAB",
            output: 0)
    }
}
