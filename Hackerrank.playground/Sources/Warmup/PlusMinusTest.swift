import Foundation

public struct PlusMinusTest:
    HackerrankTestProtocol
{
    private typealias Input = [Int]
    private typealias Output = [Double]
    
    private static func process(
        arr: Input
    ) -> Output {
        let n = Double(arr.count)
        guard
            (1...100).contains(n)
        else { invalidConstraintError() }
        var a = 0.0
        var b = 0.0
        var c = 0.0
        for i in arr {
            guard
                (-100...100).contains(i)
            else { invalidConstraintError() }
            if i > 0 {
                a += 1
            } else if i < 0 {
                b += 1
            } else {
                c += 1
            }
        }
        return [
            Double(String(format: "%.6f", (a / n)))!,
            Double(String(format: "%.6f", (b / n)))!,
            Double(String(format: "%.6f", (c / n)))!
        ]
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
            input: "-4 3 -9 0 4 1".stringSplit(" ").map({ Int($0)! }),
            output: "0.500000 0.333333 0.166667".stringSplit(" ").map({ Double($0)! }))
    }
}

