import Foundation

public struct ClosestNumbersTest:
    HackerrankTestProtocol
{
    private typealias Input = [Int]
    private typealias Output = [Int]
    
    private static func process(
        i: Input
    ) -> Output {
        let arr = i.sorted()
        var d = Int.max
        var o: [Int] = []
        for i in 0..<arr.count {
            var j = i + 1
            if j < arr.count {
                let a = arr[i]
                let b = arr[j]
                let dd = abs(a - b)
                let oo = [a, b]
                if dd < d {
                    d = dd
                    o = oo
                } else if dd == d {
                    o += oo
                }
            }
        }
        return o
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
            input: "-20 -3916237 -357920 -3620601 7374819 -7330761 30 6246457 -6461594 266854".stringSplit(" ").map({ Int($0)! }),
            output: "-20 30".stringSplit(" ").map({ Int($0)! }))
        test(
            label: "2",
            input: "-20 -3916237 -357920 -3620601 7374819 -7330761 30 6246457 -6461594 266854 -520 -470".stringSplit(" ").map({ Int($0)! }),
            output: "-520 -470 -20 30".stringSplit(" ").map({ Int($0)! }))
        test(
            label: "3",
            input: "5 4 3 2".stringSplit(" ").map({ Int($0)! }),
            output: "2 3 3 4 4 5".stringSplit(" ").map({ Int($0)! }))
    }
}
