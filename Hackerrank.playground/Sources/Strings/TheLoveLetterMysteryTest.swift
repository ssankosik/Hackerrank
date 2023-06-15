import Foundation

public struct TheLoveLetterMysteryTest:
    HackerrankTestProtocol
{
    private typealias Input = String
    private typealias Output = Int
    
    private static func process(
        s: Input
    ) -> Output {
        func getValue(
            c: Character
        ) -> Int {
            Int(c.asciiValue!) - 97
        }
        let s = Array(s)
        let ei = s.count - 1
        var r = 0
        for i in 0..<(s.count / 2) {
            let a = getValue(c: s[i])
            let b = getValue(c: s[ei - i])
            r += abs(a - b)
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
            input: "abc",
            output: 2)
        test(
            label: "2",
            input: "abcba",
            output: 0)
        test(
            label: "3",
            input: "abcd",
            output: 4)
        test(
            label: "4",
            input: "cba",
            output: 2)
        test(
            label: "6",
            input: "adslkfjas",
            output: 36)
        test(
            label: "7",
            input: "bafhaef",
            output: 13)
        test(
            label: "8",
            input: "ofrhase",
            output: 40)
    }
}
