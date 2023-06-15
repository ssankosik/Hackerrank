import Foundation

public struct CaesarCipherTest:
    HackerrankTestProtocol
{
    private typealias Input = String
    private typealias Output = String
    
    private static func process(
        s: Input,
        k: Int
    ) -> Output {
        func rotate(
            c: Character,
            startIndex: Int
        ) -> Character {
            rotated[Int(c.asciiValue!) - startIndex]
        }
        
        let original = Array("abcdefghijklmnopqrstuvwxyz")
        let kk = k % 26
        let rotated = Array(original[kk...] + original[..<kk])
        var result = ""
        for c in s {
            if c.isUppercase {
                result.append(rotate(c: c, startIndex: 65).uppercased())
            } else if c.isLowercase {
                result.append(rotate(c: c, startIndex: 97))
            } else {
                result.append(c)
            }
        }
        return result
    }
    
    private static func test(
        label: String,
        input: Input,
        k: Int,
        output: Output
    ) {
        log(
            label: label,
            process: {
                let result = process(s: input, k: k)
                return (output == result, result)
            })
    }
    
    public static func tests() {
        test(
            label: "1",
            input: "middle-Outz",
            k: 2,
            output: "okffng-Qwvb")
    }
}
