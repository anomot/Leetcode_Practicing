import UIKit

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        if nums.count <= 1 {
            return nums.count
        }

        var idx = 0;
        for i in 1..<nums.count {
            if (nums[idx] != nums[i]) {
                nums[idx + 1] = nums[i]
                idx += 1
            }
        }
        return idx + 1;

        /*
        if nums.count <= 1 {
            return nums.count
        }

        let length = nums.count
        var count = 0;
        for i in 1..<length {
            if (nums[i] == nums[i-1]) {
                count+=1
            }else {
                nums[i-count] = nums[i]
            }
        }
        return length - count
        */
    }
}

let obj = Solution()
var shoppingList: [Int] = [0,0,1,1,1,2,2,3,3,4]
let count_num = obj .removeDuplicates(&shoppingList)
print(shoppingList)
print(count_num)
