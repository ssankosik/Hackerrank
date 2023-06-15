import Foundation

public struct CountingSort4Test:
    HackerrankTestProtocol
{
    private typealias Input = [[String]]
    private typealias Output = String
    
    private static func process(
        i: Input
    ) -> Output {
        let arr = i
        var carr = Array<String>(repeating: "", count: i.count)
        let h = arr.count / 2
        var si = i.count - 1
        var ei = 0
        for i in arr.indices {
            let j = Int(arr[i][0])!
            let v = i >= h ? arr[i][1] : "-"
            carr[j] += carr[j].isEmpty ? v : " \(v)"
            if j < si {
                si = j
            }
            if j > ei {
                ei = j
            }
        }
        var o = ""
        for i in carr[si...ei] {
            if i.count > 0 {
                o += o.isEmpty ? i : " \(i)"
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
            input: """
            0 ab
            6 cd
            0 ef
            6 gh
            4 ij
            0 ab
            6 cd
            0 ef
            6 gh
            0 ij
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
            """.stringSplit("\n").map({ $0.stringSplit(" ") }),
            output: "- - - - - to be or not to be - that is the question - - - -")
        
//        test(
//            label: "1",
//            input: """
//            1 e
//            2 a
//            1 b
//            3 a
//            4 f
//            1 f
//            2 a
//            1 e
//            1 b
//            1 c
//            """.stringSplit("\n").map({ $0.stringSplit(" ") }),
//            output: "- - f e b c - a - -")
    }
}
