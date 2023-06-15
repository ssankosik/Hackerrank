import Foundation

public struct QuickSort1Test:
    HackerrankTestProtocol
{
    private typealias Input = [Int]
    private typealias Output = [Int]
    
    private static func process(
        i: Input
    ) -> Output {
        var arr = i
        var p = arr.removeFirst()
        var l = Array<Int>()
        var r = Array<Int>()
        for i in arr.indices {
            if arr[i] < p {
                l.append(arr[i])
            } else {
                r.append(arr[i])
            }
            print((l + [p] + r))
        }
        return (l + [p] + r)
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
            input: "4 5 3 7 2".stringSplit(" ").map({ Int($0)! }),
            output: "3 2 4 5 7".stringSplit(" ").map({ Int($0)! }))
        
        test(
            label: "2",
            input: "0 -3 6 4 -10 8 -5 2 -7".stringSplit(" ").map({ Int($0)! }),
            output: "-3 -10 -5 -7 0 6 4 8 2".stringSplit(" ").map({ Int($0)! }))
    }
}
