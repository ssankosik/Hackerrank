import Foundation

public struct QuickSort3Test:
    HackerrankTestProtocol
{
    private typealias Input = [Int]
    private typealias Output = String
    
    private static func process(
        i: Input
    ) -> Output {
        var arr = i
        
        func partition(
            si: Int,
            ei: Int
        ) -> Int {
            let p = arr[ei]
            var j = si
            for i in si...ei {
                if arr[i] < p {
                    arr.swapAt(i, j)
                    j += 1
                }
            }
            arr.swapAt(j, ei)
            print(arr, si, ei)
            return j
        }
        
        func quickSort(
            si: Int,
            ei: Int
        ) {
            if si >= ei, ei - si <= 1 {
                return
            }
            let j = partition(si: si, ei: ei)
            quickSort(si: si, ei: j - 1)
            quickSort(si: j + 1, ei: ei)
        }
        
        quickSort(si: 0, ei: arr.count - 1)
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
            input: "1 3 9 8 2 7 5".stringSplit(" ").map({ Int($0)! }),
            output: """
            1 3 2 5 9 7 8
            1 2 3 5 9 7 8
            1 2 3 5 7 8 9
            """)
        test(
            label: "2",
            input: "9 8 6 7 3 5 4 1 2".stringSplit(" ").map({ Int($0)! }),
            output: """
            1 2 6 7 3 5 4 9 8
            1 2 6 7 3 5 4 8 9
            1 2 3 4 6 5 7 8 9
            1 2 3 4 6 5 7 8 9
            """)
    }
}
