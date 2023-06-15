import Foundation

public struct PalindromeIndexTest:
    HackerrankTestProtocol
{
    private typealias Input = String
    private typealias Output = Int
    
    private static func process(
        s: Input
    ) -> Output {
        if s == String(s.reversed()) {
            return -1
        }
        var s = Array(s)
        let n = s.count - 1
        for i in 0..<(s.count / 2) {
            let ei = n - i
            if s[i] != s[ei] {
                s.remove(at: i)
                if s == s.reversed() {
                    return i
                } else {
                    return ei
                }
            }
        }
        return -1
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
            input: "aaab",
            output: 3)
        test(
            label: "2",
            input: "baa",
            output: 0)
        test(
            label: "3",
            input: "aaa",
            output: -1)
        
        test(
            label: "T-1",
            input: "quyjjdcgsvvsgcdjjyq",
            output: 1)
        test(
            label: "T-2",
            input: "hgygsvlfwcwnswtuhmyaljkqlqjjqlqkjlaymhutwsnwcflvsgygh",
            output: 8)
    }
}
