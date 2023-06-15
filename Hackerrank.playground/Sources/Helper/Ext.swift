import Foundation

extension String {
    public func stringSplit(_ separator: String) -> [String] {
        split(separator: separator).map({ String($0) })
    }
}

extension String {
//    public func mySplit(_ separator: String) -> [String] {
//        split(separator: separator).map({ String($0) })
//    }
    
//    public subscript(_ index: Int) -> Character {
//        self[self.index(startIndex, offsetBy: index)]
//    }
//
//    public subscript<R>(_ range: R) -> String? where R: RangeExpression, R.Bound == Int {
//        let range = range.relative(to: Int.min..<Int.max)
//        let lowerIndex = index(startIndex, offsetBy: range.lowerBound, limitedBy: endIndex)!
//        let upperIndex = index(startIndex, offsetBy: range.upperBound, limitedBy: endIndex)!
//        return String(self[lowerIndex..<upperIndex])
//    }
    
//    public func removeSubrange(startIndex, offsetBy: offset, limitedBy: endIndex)
}

//extension Collection where Element == String {
//    public func mySplit(_ separator: String) -> [String] {
//        split(separator: separator).map({ String($0) })
//    }
//}
