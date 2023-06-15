import Foundation

public struct FunnyStringTest:
    HackerrankTestProtocol
{
    private typealias Input = String
    private typealias Output = Bool
    
    private static func process(
        s: Input
    ) -> Output {
        let s = Array(s)
        for i in 0...(s.count - 2) {
            let ac = Int(s[i].asciiValue!)
            let bc = Int(s[i + 1].asciiValue!)
            let ri = s.count - 1 - i
            let ar = Int(s[ri].asciiValue!)
            let br = Int(s[ri - 1].asciiValue!)
            if abs(ac - bc) != abs(ar - br) {
                return false
            }
        }
        return true
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
            input: "acxz",
            output: true)
        test(
            label: "2",
            input: "bcxz",
            output: false)
    }
}
