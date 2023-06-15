import Foundation

public struct TimeConversionTest:
    HackerrankTestProtocol
{
    private typealias Input = String
    private typealias Output = String
    
    private static func process(
        s: Input
    ) -> Output {
        let idf = DateFormatter()
        idf.dateFormat = "hh:mm:ssa"
        let d = idf.date(from: s)!
        let odf = DateFormatter()
        odf.dateFormat = "HH:mm:ss"
        return odf.string(from: d)
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
            input: "07:05:45PM",
            output: "19:05:45")
    }
}
