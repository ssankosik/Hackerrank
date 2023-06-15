import Foundation

public struct SimpleArraySumTest:
    HackerrankTestProtocol
{
    private typealias Input = [Int]
    private typealias Output = Int
    
    private static func process(
        ar: Input
    ) -> Output {
        guard
            (1...1000).contains(ar.count)
        else { invalidConstraintError() }
        var r = 0
        for i in ar {
            guard
                (1...1000).contains(i)
            else { invalidConstraintError() }
            r += i
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
                let result = process(ar: input)
                return (output == result, result)
            })
    }
    
    public static func tests() {
        test(
            label: "1",
            input: "1 2 3 4 10 11".stringSplit(" ").map({ Int($0)! }),
            output: 31)
    }
}
