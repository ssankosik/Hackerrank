import Foundation

public struct CamelCaseTest:
    HackerrankTestProtocol
{
    private typealias Input = String
    private typealias Output = Int
    
    private static func process(
        s: Input
    ) -> Output {
        var c = 1
        for i in s {
            if i.isUppercase {
                c += 1
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
                let result = process(s: input)
                return (output == result, result)
            })
    }
    
    public static func tests() {
        test(
            label: "1",
            input: "saveChangesInTheEditor",
            output: 5)
    }
}
