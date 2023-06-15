import Foundation

public struct GameOfThrones1Test:
    HackerrankTestProtocol
{
    private typealias Input = String
    private typealias Output = Bool
    
    private static func process(
        s: Input
    ) -> Output {
        var d = Dictionary<Character, Int>()
        for c in s {
            d[c] = (d[c] ?? 0) + 1
        }
        for (k, v) in d {
            if v % 2 == 0 {
                d.removeValue(forKey: k)
            }
        }
        return d.count < 2
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
            input: "aaabbbb",
            output: true)
        test(
            label: "2",
            input: "cdefghmnopqrstuvw",
            output: false)
        test(
            label: "3",
            input: "cdcdcdcdeeeef",
            output: true)
    }
}
