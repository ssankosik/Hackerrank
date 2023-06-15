import Foundation

public struct AVeryBigSumTest:
    HackerrankTestProtocol
{
    private typealias Input = [Int]
    private typealias Output = UInt64
    
    private static func process(
        ar: Input
    ) -> Output {
        guard
            (1...10).contains(ar.count)
        else { invalidConstraintError() }
        var r = UInt64(0)
        for i in ar {
            guard
                (0...pow(10, 10)).contains(Double(i))
            else { invalidConstraintError() }
            r += UInt64(i)
        }
        return r
    }
    
    private static func test(
        label: String,
        arInput: Input,
        output: Output
    ) {
        log(
            label: label,
            process: {
                let result = process(ar: arInput)
                return (output == result, result)
            })
    }
    
    public static func tests() {
        test(
            label: "1",
            arInput: "1000000001 1000000002 1000000003 1000000004 1000000005"
                .stringSplit(" ")
                .map({ Int($0)! }),
            output: 5000000015)
    }
}
