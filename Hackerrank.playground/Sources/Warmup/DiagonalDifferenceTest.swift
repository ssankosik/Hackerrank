import Foundation

public struct DiagonalDifferenceTest:
    HackerrankTestProtocol
{
    private typealias Input = [[Int]]
    private typealias Output = Int
    
    private static func process(
        arr: Input
    ) -> Output {
        let n = arr.count
        var r = 0
        for i in 0..<n {
            let v = (n - 1) - i
            guard
                (-100...100).contains(arr[i][i]),
                (-100...100).contains(arr[i][v])
            else { invalidConstraintError() }
            r += arr[i][i] - arr[i][v]
        }
        return abs(r)
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
            input: """
            11 2 4
            4 5 6
            10 8 -12
            """.stringSplit("\n").map({ String($0).stringSplit(" ").map({ Int($0)! }) }),
            output: 15)
    }
}
