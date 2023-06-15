import Foundation

public struct GemStonesTest:
    HackerrankTestProtocol
{
    private typealias Input = [String]
    private typealias Output = Int
    
    private static func process(
        arr: Input
    ) -> Output {
        var d = Dictionary<Character, Int>()
        var c = 0
        for s in arr {
            var dd = Set<Character>()
            for ss in s {
                guard !dd.contains(ss) else { continue }
                dd.insert(ss)
                let v = (d[ss] ?? 0) + 1
                d[ss] = v
                if v == arr.count {
                    c += 1
                }
            }
        }
        return c
    }
    
    private static func test(
        label: String,
        input: Input,
        output: Output
    ) {
        log(
            label: label,
            process: {
                let result = process(arr: input)
                return (output == result, result)
            })
    }
    
    public static func tests() {
        test(
            label: "1",
            input: [
                "abcdde",
                "baccd",
                "eeabg",
            ],
            output: 2)
    }
}
