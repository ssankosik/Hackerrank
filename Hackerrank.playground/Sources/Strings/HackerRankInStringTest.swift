import Foundation

public struct HackerRankInStringTest:
    HackerrankTestProtocol
{
    private typealias Input = String
    private typealias Output = Bool
    
    private static func process(
        s: Input
    ) -> Output {
        let p = Array("hackerrank")
        let ei = p.count - 1
        var i = 0
        for c in s {
            if c == p[i] {
                if i == ei {
                    return true
                }
                i += 1
            }
        }
        return false
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
            input: "hhaacckkekraraannk",
            output: true)
        test(
            label: "2",
            input: "rhbaasdndfsdskgbfefdbrsdfhuyatrjtcrtyytktjjt",
            output: false)
    }
}
