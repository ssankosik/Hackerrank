import Foundation

public struct MakingAnagramsTest:
    HackerrankTestProtocol
{
    private typealias Input = [String]
    private typealias Output = Int
    
    private static func process(
        s: Input
    ) -> Output {
        let s1 = Array(s[0])
        let s2 = Array(s[1])
        var d = Dictionary<Character, Int>()
        for i in 0..<max(s1.count, s2.count) {
            if i < s1.count {
                let c = s1[i]
                d[c] = (d[c] ?? 0) + 1
            }
            if i < s2.count {
                let c = s2[i]
                d[c] = (d[c] ?? 0) - 1
            }
        }
        var r = 0
        for v in d.values {
            r += abs(v)
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
            input: """
                cde
                abc
            """.split(separator: "\n").map({ String($0) }),
            output: 4)
        
        test(
            label: "R-1",
            input: """
            absdjkvuahdakejfnfauhdsaavasdlkj
            djfladfhiawasdkjvalskufhafablsdkashlahdfa
            """.split(separator: "\n").map({ String($0) }),
            output: 19)
        
    }
}
