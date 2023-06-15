import Foundation

public struct BirthdayCakeCandlesTest:
    HackerrankTestProtocol
{
    private typealias Input = [Int]
    private typealias Output = Int
    
    private static func process(
        candles: Input
    ) -> Output {
        guard
            (0...pow(10, 5)).contains(Double(candles.count))
        else { invalidConstraintError() }
        var h = 0
        var c = 0
        for i in candles {
            guard
                (0...pow(10, 7)).contains(Double(candles.count))
            else { invalidConstraintError() }
            if i > h {
                h = i
                c = 1
            } else if i == h {
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
                let result = process(candles: input)
                return (output == result, result)
            })
    }
    
    public static func tests() {
        test(
            label: "1",
            input: "3 2 1 3"
                .stringSplit(" ")
                .map({ Int($0)! }),
            output: 2)
    }
}
