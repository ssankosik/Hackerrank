import Foundation

public struct SolveMeFirstTest:
    HackerrankTestProtocol
{
    private typealias Input = Int
    private typealias Output = Int
    
    private static func process(
        a: Input,
        b: Input
    ) -> Output {
        guard
            (1...1000).contains(a),
            (1...1000).contains(b)
        else { invalidConstraintError() }
        return a + b
    }
    
    private static func test(
        label: String,
        input: (Input, Input),
        output: Output
    ) {
        log(
            label: label,
            process: {
                let result = process(a: input.0, b: input.1)
                return (output == result, result)
            })
    }
    
    public static func tests() {
        test(
            label: "1",
            input: (
                2,
                3
            ),
            output: 5)
    }
}
