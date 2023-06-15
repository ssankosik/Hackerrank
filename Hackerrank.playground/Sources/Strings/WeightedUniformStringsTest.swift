import Foundation

public struct WeightedUniformStringsTest:
    HackerrankTestProtocol
{
    private typealias Input = (s: String, queries: [Int])
    private typealias Output = [Bool]
    
    private static func process(
        i: Input
    ) -> Output {
        let s = Array(i.s)
        let queries = i.queries
        var values = Set<Int>()
        var lc = s[0]
        var lcv = Int(lc.asciiValue!) - 97 + 1
        var scv = lcv
        values.insert(scv)
        for i in 1..<s.count {
            let c = s[i]
            if lc == c {
                scv += lcv
            } else {
                lc = c
                lcv = Int(c.asciiValue!) - 97 + 1
                scv = lcv
            }
            values.insert(scv)
        }
        var r = Array<Bool>()
        for q in queries {
            r.append(values.contains(q))
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
                let result = process(i: input)
                return (output == result, result)
            })
    }
    
    public static func tests() {
        test(
            label: "1",
            input: (
                s: "abccddde",
                queries: """
                1
                3
                12
                5
                9
                10
                """.stringSplit("\n").map({ Int($0)! })
            ),
            output: [
                true,
                true,
                true,
                true,
                false,
                false
            ])
        test(
            label: "2",
            input: (
                s: "aaabbbbcccddd",
                queries: """
                9
                7
                8
                12
                5
                """.stringSplit("\n").map({ Int($0)! })
            ),
            output: [
                true,
                false,
                true,
                true,
                false
            ])
    }
}
