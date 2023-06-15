import Foundation

public struct CountingSort3Test:
    HackerrankTestProtocol
{
    private typealias Input = [String]
    private typealias Output = [Int]
    
    private static func process(
        i: Input
    ) -> Output {
        let arr = i.map({ Int($0.stringSplit(" ")[0])! })
        var carr = Array<Int>.init(repeating: 0, count: 100)
        for i in arr {
            carr[i] += 1
        }
        var oarr = Array<Int>()
        var sv = 0
        for i in carr.indices {
            sv += carr[i]
            oarr.append(sv)
        }
        return oarr
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
            input: """
            4 that
            3 be
            0 to
            1 be
            5 question
            1 or
            2 not
            4 is
            2 to
            4 the
            """.stringSplit("\n"),
            output: "1 3 5 6 9 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10".stringSplit(" ").map({ Int($0)! }))
    }
}
