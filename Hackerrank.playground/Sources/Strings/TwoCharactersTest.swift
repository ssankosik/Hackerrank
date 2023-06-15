import Foundation

public struct TwoCharactersTest:
    HackerrankTestProtocol
{
    private typealias Input = String
    private typealias Output = Int
    
    private static func process(
        s: Input
    ) -> Output {
        0
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
            label: "0",
            input: "abaacdabd",
            output: 5)
        test(
            label: "1",
            input: "beabeefeab",
            output: 5)
        test(
            label: "2",
            input: "asdcbsdcagfsdbgdfanfghbsfdab",
            output: 8)
        test(
            label: "3",
            input: "asvkugfiugsalddlasguifgukvsa",
            output: 0)
    }
}
