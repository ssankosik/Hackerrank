import Foundation

public struct CompareTripletsTest:
    HackerrankTestProtocol
{
    private typealias Input = [Int]
    private typealias Output = [Int]
    
    private static func process(
        a: Input,
        b: Input
    ) -> Output {
        let n = 3
        var aResult: Int = 0
        var bResult: Int = 0
        for i in 0..<n {
            guard
                (1...100).contains(a[i]),
                (1...100).contains(b[i])
            else { invalidConstraintError() }
            if a[i] > b[i] {
                aResult += 1
            } else if a[i] < b[i] {
                bResult += 1
            }
        }
        return [aResult, bResult]
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
                "17 28 30".stringSplit(" ").map({ Int($0)! }),
                "99 16 8".stringSplit(" ").map({ Int($0)! })
            ),
            output: "2 1".stringSplit(" ").map({ Int($0)! }))
    }
}
