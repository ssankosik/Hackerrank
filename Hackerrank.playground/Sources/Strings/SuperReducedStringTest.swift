import Foundation

public struct SuperReducedStringTest:
    HackerrankTestProtocol
{
    private typealias Input = String
    private typealias Output = String
    
    private static func process(
        s: Input
    ) -> Output {
        var ar = Array<Character>(s)
        var f = false
        repeat {
            f = false
            for i in ar.indices {
                let n = ar.count
                guard i < n - 1 else { continue }
                if ar[i] == ar[i + 1] {
                    ar.remove(at: i + 1)
                    ar.remove(at: i)
                    f = true
                    break
                }
            }
        } while f && ar.count > 1
        return ar.isEmpty ? "Empty String" : String(ar)
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
            input: "aaabccddd",
            output: "abd")
        test(
            label: "2",
            input: "aa",
            output: "")
        test(
            label: "3",
            input: "baab",
            output: "")
    }
}
