import UIKit

func plusOne(_ digits: [Int]) -> [Int] {
    var digits = digits;
    var isPlusOne = true;
    for i in (0..<digits.count).reversed() {
        let addNum = isPlusOne ? 1 : 0;
        let result = digits[i] + addNum
        digits[i] = result % 10
        if result >= 10 {
            isPlusOne = true
        } else {
            isPlusOne = false
            return digits
        }
    }
    if isPlusOne {
        return [1] + digits
    } else {
        return digits
    }

}

var dataSource: [Int] = [4,3,2,1]
let resultArray = plusOne(dataSource)
print(resultArray)
