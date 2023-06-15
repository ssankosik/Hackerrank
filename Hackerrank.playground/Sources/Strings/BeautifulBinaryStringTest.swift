import Foundation

public struct BeautifulBinaryStringTest:
    HackerrankTestProtocol
{
    private typealias Input = String
    private typealias Output = Int
    
    private static func process(
        s: Input
    ) -> Output {
        let s = Array(s)
        var t = 0
        var i = 0
        while i < s.count {
            if i + 2 < s.count {
                if String(s[i...(i + 2)]) == "010" {
                    t += 1
                    i += 3
                } else {
                    i += 1
                }
            } else {
                return t
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
            input: input,
            process: {
                let result = process(s: input)
                return (output == result, result)
            })
    }
    
    public static func tests() {
        test(
            label: "1",
            input: "0101010",
            output: 2)
        test(
            label: "2",
            input: "01100",
            output: 0)
        test(
            label: "3",
            input: "0100101010",
            output: 3)
    }
}
