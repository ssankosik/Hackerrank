import Foundation

public struct MiniMaxSumTest:
    HackerrankTestProtocol
{
    private typealias Input = [Int]
    private typealias Output = [Int]
    
    private static func processA(
        ar: Input
    ) -> Output {
        let s = ar.reduce(0, +)
        return [
            s - ar.max()!,
            s - ar.min()!
        ]
    }
    
    private static func processB(
        ar: Input
    ) -> Output {
        var s = 0
        var l = 0
        var h = 0
        for i in ar {
            if s == 0 {
                l = i
                h = i
            } else {
                if l > i {
                    l = i
                }
                if h < i {
                    h = i
                }
            }
            s += i
        }
        return [
            s - h,
            s - l
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
                let result = processB(ar: input)
                return (output == result, result)
            })
    }
    
    public static func tests() {
        test(
            label: "1",
            input: "1 2 3 4 5".stringSplit(" ").map({ Int($0)! }),
            output: "10 14".stringSplit(" ").map({ Int($0)! }))
    }
}
