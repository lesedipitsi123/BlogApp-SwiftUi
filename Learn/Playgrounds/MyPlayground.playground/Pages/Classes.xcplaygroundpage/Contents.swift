import SwiftUI
import CoreGraphics

// classes
class Person {
    let name : String
    let age: UInt32
    
    init(_ name: String, _ age: UInt32) {
        self.name = name
        self.age = age
    }
    
    func whoAmI() -> Void {
        print(self.name)
    }
}

protocol Book {
    func addBookMark()
    func read()
    func rate()
}

class TextBook : Book {
    func addBookMark() {
        print("Bookmarked <3")
    }
    
    func read() {
        print("Reading xD")
    }
    
    func rate() {
        print("Rated 5 stars *****")
    }
}

let able = Person("Able", 23)
able.whoAmI()

let calculus = TextBook()

calculus.read()
