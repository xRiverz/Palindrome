import Foundation


func isPalindrome (s:String) -> Bool{
    for index in 0...s.count-1{
        if (s[s.index(s.startIndex,offsetBy : index )] != s[s.index(s.startIndex,offsetBy : s.count-(1+index))]){
            return false
        }
    }
    return true
}
func isPalindromeX(s:String) -> Bool{
    guard s.count >= 2 else{
        return true
    }
    if (s[s.startIndex] != s[s.index(before: s.endIndex)]){
        return false
    }else {
        let end = s.index(s.endIndex, offsetBy: -1)
        let start = s.index(s.startIndex, offsetBy: 1)
        let s2 = String(s[start..<end])
        return isPalindromeX(s: s2)
    }
}
func isPalindromeU(s:String) -> Bool {
    return s == String(s.reversed())
}

print("Check the string:")
let uI = readLine()

if uI != nil {
    let enter = isPalindromeU(s: uI!)
    if enter {
        print("\(uI!) is Palindeome")
    }else {
        print("\(uI!) is Not Palindeome")
    }
}
