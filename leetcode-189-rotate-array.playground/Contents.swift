import UIKit

func rotate(_ nums: inout [Int], _ k: Int) {

    //第一种方法
    /*
    let shift = k > nums.count ? abs(nums.count - k) : k

    guard nums.count > 1, shift > 0 else { return }

    let lastIndex = nums.count - 1


    let shiftFrom = lastIndex - shift + 1

    let backArray = Array(nums[shiftFrom...lastIndex])
    let frontArray = Array(nums[0..<shiftFrom])

    nums = backArray + frontArray
    */

    //第二种方法
    /*
    if k > 0 {
        for _ in 1...k {
            let lastItem = nums.last
            nums.removeLast()
            if let lastItem = lastItem {
                nums.insert(lastItem, at: 0)
            }
        }
    }
  */

    //第三种方法
    /*
    if k < 1 || nums.count == 0{
        return
    }
    let k = k % nums.count
    nums = Array(nums[nums.count - k..<nums.count] + nums[0..<nums.count-k])
     */

    //第四种方法
    if nums.count <= 0 { return }
    let k = k % nums.count

    reverse(&nums, 0, nums.count-1)
    reverse(&nums, 0, k-1)
    reverse(&nums, k, nums.count-1)
}

func reverse(_ nums: inout [Int], _ s: Int, _ e: Int) {
    var s = s; var e = e
    while s < e {
        nums.swapAt(s, e)
        s += 1
        e -= 1
    }
}

var dataList: [Int] = [-1,-100,3,99]
rotate(&dataList, 2)
print(dataList)
