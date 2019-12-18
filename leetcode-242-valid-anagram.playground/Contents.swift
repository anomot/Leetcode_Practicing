import UIKit

func isAnagram(s: String, _ t: String) -> Bool {


    func stringToDict(str: String) -> [Character: Int] {
        var dict = [Character: Int]()
        str.forEach({
            if let count = dict[$0] {
                dict[$0] = count + 1
            } else {
                dict[$0] = 0
            }
        })
        return dict
    }
    return stringToDict(str: s) == stringToDict(str: t)
s
}

//isAnagram(s: "anagram", "nagaram")
isAnagram(s: "rat", "cat")
