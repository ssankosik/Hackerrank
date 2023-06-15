import Foundation

public struct SeparateNumbersTest:
    HackerrankTestProtocol
{
    private typealias Input = String
    private typealias Output = Int
    
    private static func process(
        s: Input
    ) -> Output {
        if s.count == 1 || s.prefix(1) == "0" {
            return 0
        }
        var d = 1
        while d * 2 <= s.count {
            let fc = s.prefix(d)
            let fi = Int(fc)!
            var t = fc
            var ai = fi
            var ns = s.dropFirst(d)
            var dd = d
            while !ns.isEmpty {
                if ns.prefix(1) == "0" {
                    break
                }
                let bc = ns.prefix(dd)
                let bi = Int(bc)!
                if bi - ai == 1 {
                    t += bc
                    ns.removeFirst(dd)
                    ai = bi
                } else {
                    if dd - d == 1 {
                        break
                    }
                    dd += 1
                }
            }
            print(d, t, s)
            if t == s {
                return fi
            }
            d += 1
        }
        return 0
    }
    
    private static func test(
        label: String,
        input: Input,
        output: Output
    ) {
        log(
            label: label,
            process: {
                let result = process(s: input)
                return (output == result, result)
            })
    }
    
    public static func tests() {
        test(
            label: "1",
            input: "1234",
            output: 1)
        test(
            label: "2",
            input: "91011",
            output: 9)
        test(
            label: "3",
            input: "99100",
            output: 99)
        test(
            label: "4",
            input: "101103",
            output: 0)
        test(
            label: "5",
            input: "010203",
            output: 0)
        test(
            label: "6",
            input: "13",
            output: 0)
        test(
            label: "7",
            input: "1",
            output: 0)
        
        test(
            label: "R-1",
            input: "7891011",
            output: 7)
        test(
            label: "R-2",
            input: "9899100",
            output: 98)
        test(
            label: "R-3",
            input: "999100010001",
            output: 0)
        
        test(
            label: "T-1",
            input: "6",
            output: 0)
        test(
            label: "R-2",
            input: "1",
            output: 0)
        test(
            label: "R-3",
            input: "2",
            output: 0)
        test(
            label: "R-4",
            input: "33",
            output: 0)
        test(
            label: "R-5",
            input: "4445",
            output: 44)
        test(
            label: "R-6",
            input: "8889",
            output: 88)
        test(
            label: "R-7",
            input: "8910",
            output: 8)
    }
}
