import Foundation

public struct FindMedianTest:
    HackerrankTestProtocol
{
    private typealias Input = [Int]
    private typealias Output = Int
    
    private static func process(
        i: Input
    ) -> Output {
        let arr = i
        return arr.sorted()[arr.count / 2]
    }
    
    private static func test(
        label: String,
        input: Input,
        output: Output
    ) {
        log(
            label: label,
            process: {
                let result = process(i: input)
                return (output == result, result)
            })
    }
    
    public static func tests() {
        test(
            label: "1",
            input: "0 1 2 4 6 5 3".stringSplit(" ").map({ Int($0)! }),
            output: 3)
    }
}
