import Foundation

public struct SortingTutorialTest:
    HackerrankTestProtocol
{
    private typealias Input = (v: Int, arr: [Int])
    private typealias Output = Int
    
    private static func process(
        i: Input
    ) -> Output {
        i.arr.firstIndex(of: i.v)!
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
            input: (
                v: 4,
                arr: "1 4 5 7 9 12".stringSplit(" ").map({ Int($0)! })
            ),
            output: 1)
    }
}
