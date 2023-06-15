import Foundation

public struct InsertionSort1Test:
    HackerrankTestProtocol
{
    private typealias Input = [Int]
    private typealias Output = [[Int]]
    
    private static func process(
        i: Input
    ) -> Output {
        var arr = i
        var i = arr.count - 1
        let v = arr[i]
        var o = Array<[Int]>()
        while i >= 0 {
            if i == 0 || v > arr[i - 1] {
                arr[i] = v
                print(arr)
                o.append(arr)
                break
            } else {
                arr[i] = arr[i - 1]
                print(arr)
                o.append(arr)
            }
            i -= 1
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
            input: "2 4 6 8 3".stringSplit(" ").map({ Int($0)! }),
            output: """
            2 4 6 8 8
            2 4 6 6 8
            2 4 4 6 8
            2 3 4 6 8
            """.stringSplit("\n").map({ $0.stringSplit(" ").map({ Int($0)! }) }))
                
        test(
            label: "2",
            input: "1 3 5 9 13 22 27 35 46 51 55 83 87 23".stringSplit(" ").map({ Int($0)! }),
            output: """
            1 3 5 9 13 22 27 35 46 51 55 83 87 87
            1 3 5 9 13 22 27 35 46 51 55 83 83 87
            1 3 5 9 13 22 27 35 46 51 55 55 83 87
            1 3 5 9 13 22 27 35 46 51 51 55 83 87
            1 3 5 9 13 22 27 35 46 46 51 55 83 87
            1 3 5 9 13 22 27 35 35 46 51 55 83 87
            1 3 5 9 13 22 27 27 35 46 51 55 83 87
            1 3 5 9 13 22 23 27 35 46 51 55 83 87
            """.stringSplit("\n").map({ $0.stringSplit(" ").map({ Int($0)! }) }))
                
        test(
            label: "3",
            input: "2 3 4 5 6 7 8 9 10 1".stringSplit(" ").map({ Int($0)! }),
            output: """
            2 3 4 5 6 7 8 9 10 10
            2 3 4 5 6 7 8 9 9 10
            2 3 4 5 6 7 8 8 9 10
            2 3 4 5 6 7 7 8 9 10
            2 3 4 5 6 6 7 8 9 10
            2 3 4 5 5 6 7 8 9 10
            2 3 4 4 5 6 7 8 9 10
            2 3 3 4 5 6 7 8 9 10
            2 2 3 4 5 6 7 8 9 10
            1 2 3 4 5 6 7 8 9 10
            """.stringSplit("\n").map({ $0.stringSplit(" ").map({ Int($0)! }) }))
    }
}
