import UIKit


func isEqual(inputStr: String, char1: String) -> Bool {
    
    var counter = 0
    for char in inputStr {
        if String(char) == char1 {
            counter = counter + 1
        } else {
            counter = counter - 1
        }
    }
    return counter == 0 ? true : false
}


print(isEqual(inputStr: "L", char1: "L"))
print(isEqual(inputStr: "R", char1: "L"))
print(isEqual(inputStr: "LR", char1: "L"))
print(isEqual(inputStr: "RL", char1: "L"))
print(isEqual(inputStr: "RLRL", char1: "L"))
print(isEqual(inputStr: "LLRRL", char1: "L"))
