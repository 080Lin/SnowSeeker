import UIKit

var greeting = "Hello, playground"

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for num in nums {
        let answer = target - num
        if nums.contains(answer) {
            if answer == num {
                if nums.filter({ $0 == num }).count < 2 {
                    continue
                } else {
                    return [nums.firstIndex(of: num)!, nums.firstIndex(of: answer)!]
                }
            }
            return [nums.firstIndex(of: num)!, nums.firstIndex(of: answer)!]
        }
    }
    return [0,1]
}

print(twoSum([3,2,4], 6))

let arr = [3,4,5,6,7,8,9,0]

print(arr.dropFirst(4))
