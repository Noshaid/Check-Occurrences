import UIKit


class Stack {
    
    var array = [String]()
    
    func push(val: String) {
        array.append(val)
    }
    
    func pop() {
        if array.count > 0 {
            array.removeLast()
        }
    }
    
    func getTop() -> String? {
        if array.count > 0 {
            return array.last
        }
        return nil
    }
    
    func isEmpty() -> Bool {
        return array.isEmpty
    }
}

func isEqual(inputStr: String) -> Bool {
    
    let stackObj = Stack()
    for char in inputStr {
        if stackObj.getTop() == String(char) || stackObj.isEmpty() {
            stackObj.push(val: String(char))
        } else {
            stackObj.pop()
        }
    }
    return stackObj.isEmpty() ? true : false
}

print(isEqual(inputStr: "L"))
print(isEqual(inputStr: "R"))
print(isEqual(inputStr: "LR"))
print(isEqual(inputStr: "RL"))
print(isEqual(inputStr: "RLRL"))
print(isEqual(inputStr: "LLRRL"))
