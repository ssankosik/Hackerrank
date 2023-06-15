import Foundation

public struct InsertSort3Test:
    HackerrankTestProtocol
{
    private typealias Input = [Int]
    private typealias Output = [Int]
    
    private static func process(
        i: Input
    ) -> Output {
        var arr = i
        var sarr = [arr.removeFirst()]
        while arr.count > 0 {
            sarr.insert(arr.removeFirst(), at: 0)
            for j in 0...(sarr.count - 2) {
                if sarr[j] > sarr[j + 1] {
                    sarr.swapAt(j, j + 1)
                }
            }
        }
        return sarr
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
            input: "7 4 3 5 6 2".stringSplit(" ").map({ Int($0)! }),
            output: "2 3 4 5 6 7".stringSplit(" ").map({ Int($0)! }))
        
        test(
            label: "2",
            input: "4 1 3 5 6 2".stringSplit(" ").map({ Int($0)! }),
            output: "1 2 3 4 5 6".stringSplit(" ").map({ Int($0)! }))
    }
}
