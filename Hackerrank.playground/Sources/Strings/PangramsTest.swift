import Foundation

public struct PangramsTest:
    HackerrankTestProtocol
{
    private typealias Input = String
    private typealias Output = Bool
    
    private static func process(
        s: Input
    ) -> Output {
        var set = Set<Character>()
        for c in s {
            let cc = Character(c.lowercased())
            if cc.isLowercase {
                set.insert(cc)
                if set.count == 26 {
                    return true
                }
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
            input: "We promptly judged antique ivory buckles for the next prize",
            output: true)
        test(
            label: "2",
            input: "We promptly judged antique ivory buckles for the prize",
            output: false)
    }
}
