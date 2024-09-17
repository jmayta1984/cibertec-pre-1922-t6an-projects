/*
 1: Variables y constantes
 */
var name = "Jorge"
let age = 40

name = "Jorge Luis"

/* 
 Explicación:
 var: Permite cambiar el valor de una variable después de su declaración.
 let: Declara un valor constante que no puede cambiar
*/


/*
 2: Tipos de datos
 */
let integer: Int = 16
let decimal: Double = 3.14
let isSwiftFun: Bool = true
let greeting: String = "Hello, Cibertec"

/*
 3: Operadores
 */
let a = 5
let b = 10
let sum = a + b
let isGreater = a > b
let bothTrue = (a < b) && (b > 0)

/*
 4: Condicionales
 */

let temperature = 30

if (temperature > 25) {
    print("It's hot")
} else if (temperature < 15) {
    print("It's cold")
} else {
    print("It's a nice day")
}

/*
 5: Estructuras repetitivas
 */

let numbers:[Int] = [1, 2, 3, 4, 5]

for number in numbers {
    print(number)
}
/*
 Explicación:
 for-in: Itera sobre elementos de una colección (en este caso, un array)
 */

var count = 5

while (count > 0) {
    print("Counting down: \(count)")
    count -= 1
}

/*
 6: Funciones
 */

func greet(name: String) -> String {
    "Hello, \(name)"
}

let greetingMessage = greet(name: "Lorena")
print(greetingMessage)

/*
 7: Opcionales
 Explicación:
 Swift permite la posibilidad de que una variable no tenga valor usando "optionals", indicados con ?. Un optional puede contener un valor o ser nil.
 */

var optionalName: String? = "Alice"
print(optionalName)

optionalName = nil
print(optionalName)

if let unwrappedName = optionalName {
    print ("Hello, \(unwrappedName)")
} else {
    print("No name provided")
}
/*
 Explicación:
 String?: Indica que la variable puede contener un String o ser nil
 if let: Desempaqueta un opcional de forma segura.
 */

/*
 8: Clases y estructuras
 Explicación:
 Swift es un lenguaje orientado a objetos, por lo que se puede definir clases y estructuras para modelar objetos.
 */

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func describe()  {
        print("My name is \(name) and I am \(age) years old.")
    }
}

let person = Person(name: "Carmen", age: 25)
person.describe()

struct Rectangle {
    var width: Double
    var height: Double
    
    func area() -> Double {
        width * height
    }
}

let rectangle = Rectangle(width: 10, height: 5)
print(rectangle.area())

/*
 9: Protocolos
 Explicación:
 Los protocolos en Swift definen un conjunto de métodos y propiedades que una clase, una estructura o enumeración debe implementar. Es una forma de proporcionar interface comunes en diferentes tipos.
 */

protocol Describable {
    func describe() -> String
}

struct Car: Describable {
    func describe() -> String {
        "The model is \(model)"
    }
    
    var model: String
}

let myCar = Car(model: "Tesla Model 3")
print(myCar.describe())
