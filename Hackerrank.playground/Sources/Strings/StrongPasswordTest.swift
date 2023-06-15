import Foundation

public struct StrongPasswordTest:
    HackerrankTestProtocol
{
    private typealias Input = String
    private typealias Output = Int
    
    private static func process(
        s: Input
    ) -> Output {
        func validate(
            r: String
        ) -> Bool {
            s.range(of: r, options: .regularExpression) != nil
        }
        var e = 0
        if !validate(r: ".*[0-9]+.*") {
            e += 1
        }
        if !validate(r: ".*[A-Z]+.*") {
            e += 1
        }
        if !validate(r: ".*[a-z]+.*") {
            e += 1
        }
        if !validate(r: ".*[!@#$%^&*()\\-+]+.*") {
            e += 1
        }
        return max(e, 6 - s.count)
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
            input: "Ab1",
            output: 3)
        test(
            label: "2",
            input: "#HackerRank",
            output: 1)
        test(
            label: "3",
            input: "AUzs-nV",
            output: 1)
    }
}
