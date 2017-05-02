import Foundation

public func functions() {
    Utils.sectionBreak(sectionTitle: "Functions")
    
    sendMessage()
    sendMessage(shouting: true)
    
    
    Utils.lineBreak()
    
    
    print(getMessage("Hello", to: "Charlie"))
    
    
    Utils.lineBreak()
    
    
    var intArray: [Int] = []
    for num in 1...8 {
        intArray.append(num)
    }
    
    let evenResults = filterInts(intArray, isEven)
    print(evenResults)
    
    let evenResults2 = filterInts([4,5,6,7,8], {(number: Int) -> Bool in return number % 2 == 0})
    print(evenResults2)
    
    let evenResults3 = filterInts([4,5,6,7,8]) {
        $0 % 2 == 0
    }
    print(evenResults3)
    
    
    Utils.lineBreak()
    
    
    let names = ["Annabelle", "Bailey", "Charlie", "Doug", "Ellie", "Felicia"]
    let shortNames = names.filter {name in name.characters.count < 7 }
    print(shortNames)
    
}


// MARK: - Private Functions
func sendMessage() {
    let message = "Hey There"
    print(message)
}

func sendMessage(shouting: Bool) {
    var message = "Hey there!"
    if shouting {
        message = message.uppercased()
    }
    print(message)
}

func getMessage(_ message: String, to recipient: String, shouting: Bool = false) -> String {
    var message = ("\(message), \(recipient)")
    if (shouting) {
        message = message.uppercased()
    }
    return message
}

func isEven(_ number: Int) -> Bool {
    return number % 2 == 0
}

func filterInts(_ numbers:[Int], _ includeNumber: (Int) -> Bool) -> [Int] {
    var results: [Int] = []
    
    for number in numbers where includeNumber(number) {
        results.append(number)
    }
    
    return results
}

func filter<Element>(_ source: [Element], _ includeElement: (Element) -> Bool) -> [Element] {
    var results: [Element] = []
    for element in source where includeElement(element) {
        results.append(element)
    }
    
    return results
}
