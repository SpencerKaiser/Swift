//: Playground - noun: a place where people can play

import UIKit

public func varsAndLoops() {
    Utils.sectionBreak(sectionTitle: "Intro - Vars and Loops", firstSection: true)
    
    var version: Int
    version = 1
    print(version)
    
    for number in 1..<5 {
        print(number)
    }
    
    
    Utils.lineBreak()
    
    
    var breakfastPreferences = ["pancakes" : 1, "Waffles": 2, "Fruit": 3, "Cereal": 4]
    
    
    //for item in breakfastItems.keys {
    //    print(item)
    //}
    
    
    for (item, preference) in breakfastPreferences {
        print("Item \(item) has a preference of \(preference)")
    }
    
    
    Utils.lineBreak()
    
    var reactions = ["wat", "huh"]
    let otherReactions = ["lol", "wow"]
    
    reactions += otherReactions
    reactions.append("whoa")
    
    
    print(reactions)
    
    
    Utils.lineBreak()
    
    
    if let wafflesPref = breakfastPreferences["Waffles"] {
        print("Waffles preference: \(wafflesPref)")
        
        switch wafflesPref {
        case 1:
            print("I like waffles the best!")
        case 2...5:
            print("I like waffles ok...")
        default:
            print("I'm not a fan of waffles...")
        }
    }
    
    
    Utils.lineBreak()
    
    
    let username = "Spencer"
    let passwordIsValid = Utils.randBool()
    
    switch (username, passwordIsValid) {
    case ("admin", true):
        print("Welcome back, Admin!")
    case ("guest", _):
        print("Hello guest!")
    case (_, let isValid):
        print(isValid ? "Welcome to the restricted area!" : "Access Denied")
    }
}
