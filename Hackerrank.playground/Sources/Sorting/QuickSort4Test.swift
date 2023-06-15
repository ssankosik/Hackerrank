import Foundation

public struct QuickSort4Test:
    HackerrankTestProtocol
{
    private typealias Input = [Int]
    private typealias Output = Int
    
    private static func process(
        i: Input
    ) -> Output {
        var arr = i
        var swap = 0
        
        func insertionSort(
            arr: [Int]
        ) -> Int {
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
        
        func partition(
            si: Int,
            ei: Int
        ) -> Int {
            let p = arr[ei]
            var j = si
            for i in si...ei {
                if arr[i] < p {
                    arr.swapAt(i, j)
                    swap += 1
                    j += 1
                }
            }
            arr.swapAt(j, ei)
            swap += 1
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
        print(swap)
        return insertionSort(arr: i) - swap
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
//        test(
//            label: "1",
//            input: "1 3 9 8 2 7 5".stringSplit(" ").map({ Int($0)! }),
//            output: 1) // 9
//        test(
//            label: "2",
//            input: "10 9 8 7 6 5 4 3 2 1".stringSplit(" ").map({ Int($0)! }),
//            output: 16) // 45
        test(
            label: "3",
            input: "2 5 3 1".stringSplit(" ").map({ Int($0)! }),
            output: 0) // 45
    }
}
