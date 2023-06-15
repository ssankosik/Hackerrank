import Foundation

public protocol HackerrankTestProtocol {
    static func tests()
}

extension HackerrankTestProtocol {
    public static func log(
        label: String,
        input: Any? = nil,
        process: () -> (Bool, Any)
    ) {
        print("Case: \(label)")
        if let input = input {
            let input = String(input)
            print("Input: \(input.contains("\n") ? "\n" : "")\(input)")
        }
        let processed = process()
        print("Result: \(processed.0), Data: \(processed.1)")
        print()
    }
    
    public static func invalidConstraintError(label: String? = nil) -> Never {
        fatalError("Invalid Constraint" + (label.flatMap({ ": \($0)" }) ?? ""))
    }
}
