import Foundation

public struct InsertionSort4Test:
    HackerrankTestProtocol
{
    private typealias Input = [Int]
    private typealias Output = Int
    
    private static func process(
        i: Input
    ) -> Output {
        var arr = i
        var o = 0
        for i in 0..<arr.count {
            var j = i - 1
            let vi = arr[i]
            var k: Int?
            while j >= 0 {
                if arr[j] > vi {
                    k = j
                }
                j -= 1
            }
            if let k = k {
                arr.remove(at: i)
                arr.insert(vi, at: k)
                o += i - k
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
            input: "2 1 3 1 2".stringSplit(" ").map({ Int($0)! }),
            output: 4)
        
        test(
            label: "2",
            input: "1 1 2 2 3 3 5 5 7 7 9 9".stringSplit(" ").map({ Int($0)! }),
            output: 0)
    }
}
