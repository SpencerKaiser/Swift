import Foundation

public func classesAndStructs() {
    Utils.sectionBreak(sectionTitle: "Classes and Structs")
    var rect = Rectangle(width: 10, height: 12)
    print(rect.area)
    
    rect.height += 2
    print(rect.area)
    
    print(rect.describe())
    
    Utils.lineBreak()
    
    let doggo = Dog()
    doggo.bark()
    
    let bigPupper = Aussie()
    bigPupper.bark()
    bigPupper.name = "Fred"
    
    Utils.lineBreak()
    
    var mySeat: Seat
    
    if (Utils.randBool()) {
        mySeat = .window
    } else {
        mySeat = .aisle
    }
    
    switch mySeat {
    case .window:
        print("Dangit")
    case .aisle:
        print("Perfect...")
    case .middle:
        print("I'll get the next flight...")
    }
    
    Utils.lineBreak()
    
    testLoad(server: .production)
}


// MARK: - Private Structs, Classes, and Functions
struct Rectangle {
    var width: Int
    var height: Int
    var area: Int {
        return width * height
    }
}

extension Rectangle {
    func describe() -> String {
        return "I am a rectangle of height \(height) and width \(width)"
    }
}


class Dog {
    var name = "Doggo"
    func bark() {
        print("Woof woof!")
    }
}

class Aussie: Dog {
    override func bark() {
        print("Arf arf!")
    }
    
    override init() {
        super.init()
        self.name = "Big Pupper"
    }
}

enum Seat {
    case window, middle, aisle
}

enum ServerAddress: String {
    case staging = "https://staging.aa.com"
    case production = "https://aa.com"
}

func testLoad(server: ServerAddress) {
    let serverUrl = server.rawValue
    print("Loading \(server) server at \(serverUrl)")
}
