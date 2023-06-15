import Foundation

public struct QuickSort2Test:
    HackerrankTestProtocol
{
    private typealias Input = [Int]
    private typealias Output = String
    
    private static func process(
        i: Input
    ) -> Output {
        @discardableResult
        func quickSort(
            arr: [Int]
        ) -> [Int] {
            if arr.count <= 1 {
                return arr
            }
            var p = 0
            var l = Array<Int>()
            var r = Array<Int>()
            for i in arr.indices {
                if i == 0 {
                    p = arr[i]
                } else if arr[i] < p {
                    l.append(arr[i])
                } else {
                    r.append(arr[i])
                }
            }
            let ll = quickSort(arr: l)
            let rr = quickSort(arr: r)
            if ll + [p] + rr != arr || ll.isEmpty || rr.isEmpty {
                print(ll + [p] + rr)
            }
            return ll + [p] + rr
        }
        
        quickSort(arr: i)
        return ""
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
            input: "5 8 1 3 7 9 2".stringSplit(" ").map({ Int($0)! }),
            output: """
            2 3
            1 2 3
            7 8 9
            1 2 3 5 7 8 9
            """)
        test(
            label: "2",
            input: "9 8 6 7 3 5 4 1 2".stringSplit(" ").map({ Int($0)! }),
            output: """
            1 2
            4 5
            1 2 3 4 5
            1 2 3 4 5 6 7
            1 2 3 4 5 6 7 8
            1 2 3 4 5 6 7 8 9
            """)
    }
}
