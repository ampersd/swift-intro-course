
// ARC - Automatic Reference Counting

class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}

var ref1: Person?
var ref2: Person?
var ref3: Person?

ref1 = Person(name: "Jake")
// Jake is being initialized

ref2 = ref1
ref3 = ref1

ref1 = nil
ref2 = nil

ref3 = nil
// Jake is being deinitialized