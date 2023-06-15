import Foundation

public struct StaircaseTest:
    HackerrankTestProtocol
{
    private typealias Input = Int
    private typealias Output = String
    
    private static func process(
        n: Input
    ) -> Output {
        guard (1...100).contains(n) else { return "" }
        var r = ""
        for i in 1...n {
            r += String(repeating: " ", count: n - i) + String(repeating: "#", count: i)
            if i != n {
                r += "\n"
            }
        }
        
        return r
    }
    
    private static func test(
        label: String,
        input: Input,
        output: Output
    ) {
        log(
            label: label,
            process: {
                let result = process(n: input)
                return (output == result, result)
            })
    }
    
    public static func tests() {
        test(
            label: "1",
            input: 6,
            output: """
                 #
                ##
               ###
              ####
             #####
            ######
            """)
    }
}
