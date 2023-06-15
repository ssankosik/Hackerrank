import Foundation

public struct TwoStringsTest:
    HackerrankTestProtocol
{
    private typealias Input = [String]
    private typealias Output = String
    
    private static func process(
        s: Input
    ) -> Output {
        let s1 = s[0]
        let s2 = s[1]
        let a = Set(s1.count >= s2.count ? s1 : s2)
        let b = Set(s1.count >= s2.count ? s2 : s1)
        for c in a {
            if b.contains(c) {
                return "YES"
            }
        }
        return "NO"
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
            hello
            world
            """.split(separator: "\n").map({ String($0) }),
            output: "YES")
        
        test(
            label: "1",
            input: """
            hi
            world
            """.split(separator: "\n").map({ String($0) }),
            output: "NO")
        
        test(
            label: "T-1",
            input: """
            wouldyoulikefries
            abcabcabcabcabcabc
            """.split(separator: "\n").map({ String($0) }),
            output: "NO")
        
        test(
            label: "T-2",
            input: """
            hackerrankcommunity
            cdecdecdecde
            """.split(separator: "\n").map({ String($0) }),
            output: "YES")
        
    }
}
