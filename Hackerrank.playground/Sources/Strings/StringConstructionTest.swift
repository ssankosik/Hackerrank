import Foundation

public struct StringConstructionTest:
    HackerrankTestProtocol
{
    private typealias Input = String
    private typealias Output = Int
    
    private static func process(
        s: Input
    ) -> Output {
        Set(s).count
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
            input: "abcd",
            output: 4)
        
        test(
            label: "2",
            input: "abab",
            output: 2)
        
        test(
            label: "2",
            input: "scfg",
            output: 3)
        
        test(
            label: "2",
            input: "ababa",
            output: 3)
    }
}
