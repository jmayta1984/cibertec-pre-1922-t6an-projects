
// Declaración implícita
var greeting = "Hello, playground"

// Declaración explícita
let name: String
name = "Ana"

// variable: var
// constante: let

let oranges = 5
let apples = 10

let orangeSummary = "I have " + String(oranges)
let appleSummary = "I have \(apples)"

let fruitSummary = "I have \(oranges + apples)"

// Funciones
func add(_ a: Int, with b: Int) -> Int {
    a + b
}

add(5, with: 15)

// Arreglos
var names: [String]
names = [String]()
names.count
names.append("Carlos")
names.append("Juan")
names.append("Ana")
names.append("Francisco")

for index in 0...names.count-1 {
    print(names[index])
}

for name in names {
    print(name)
}

names.forEach() { name in
    print(name)
}








