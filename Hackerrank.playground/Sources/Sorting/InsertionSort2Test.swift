import Foundation

public struct InsertionSort2Test:
    HackerrankTestProtocol
{
    private typealias Input = [Int]
    private typealias Output = [[Int]]
    
    private static func process(
        i: Input
    ) -> Output {
        var arr = i
        var o = Array<[Int]>()
        for i in 1..<arr.count {
            var j = i - 1
            var k: Int?
            let vi = arr[i]
            while j >= 0 {
                if arr[j] > vi {
                    k = j
                }
                j -= 1
            }
            if let k = k {
                arr.remove(at: i)
                arr.insert(vi, at: k)
            }
            print(arr)
            o.append(arr)
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
                return (output == result, [])
            })
    }
    
    public static func tests() {
        test(
            label: "1",
            input: "1 4 3 5 6 2".stringSplit(" ").map({ Int($0)! }),
            output: """
            1 4 3 5 6 2
            1 3 4 5 6 2
            1 3 4 5 6 2
            1 3 4 5 6 2
            1 2 3 4 5 6
            """.stringSplit("\n").map({ $0.stringSplit(" ").map({ Int($0)! }) }))
    }
}
