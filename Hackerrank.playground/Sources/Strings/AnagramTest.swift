import Foundation

public struct AnagramTest:
    HackerrankTestProtocol
{
    private typealias Input = String
    private typealias Output = Int
    
    private static func process(
        s: Input
    ) -> Output {
        if s.count % 2 == 1 {
            return -1
        }
        let s = Array(s)
        let h = s.count / 2
        var bd = Dictionary<Character, Int>()
        var r = 0
        for i in h..<s.count {
            let c = s[i]
            bd[c] = (bd[c] ?? 0) + 1
            r += 1
        }
        for ai in 0..<h {
            let ac = s[ai]
            if let bn = bd[ac], bn != 0 {
                bd[ac] = bn - 1
                r -= 1
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
            input: "aaabbb",
            output: 3)
        test(
            label: "2",
            input: "ab",
            output: 1)
        test(
            label: "3",
            input: "abc",
            output: -1)
        test(
            label: "4",
            input: "mnop",
            output: 2)
        test(
            label: "5",
            input: "xyyx",
            output: 0)
        test(
            label: "6",
            input: "xaxbbbxx",
            output: 1)
    }
}
