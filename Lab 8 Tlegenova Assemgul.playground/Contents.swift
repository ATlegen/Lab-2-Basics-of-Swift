import Foundation
/*
// создание структуры
struct Book {
    var name: String
    var description: String
    var pageCount: Int
}
// Объявление пустой структуры
let string = String.init() // ""
let integer = Int.init() // 0
let bool = Bool.init() // false

// Объявление пустой структуры 2 способ
var string2 = String() // ""
var integer2 = Int() // 0
var bool2 = Bool() // false

// Объявляем тип структура и заполняем данные
let myBook = Book(name: "Harry Potter", description: "Text", pageCount: 200)

// Использование константы структурного типа структура
print(myBook)
print(myBook.description)
print(myBook.name)
print(myBook.pageCount)

// создание структуры одометр
struct Odometer {
    var count: Int = 0 // Установленное значение по умолчанию для свойства 'count'.


mutating func increment() {// функция которая может менять значение переменных структуры
    count += 1
  }

mutating func reset() {  // функция которая может менять значение переменных структуры
    count = 0
  }
}
var odometer = Odometer() // odometer.count defaults to 0
odometer.increment() // odometer.count is incremented to 1
odometer.increment()
odometer.increment()

print(odometer.count) // odometer.count is incremented to 1
odometer.reset()
print(odometer.count)


struct Temperature {
  var celsius: Double

  init(celsius: Double) {                                    // может менять значение
    self.celsius = celsius
  }

  init(fahrenheit: Double) {
    celsius = (fahrenheit - 32) / 1.8
  }
}

let currentTemperature = Temperature(celsius: 18.5)
let boiling = Temperature(fahrenheit: 212.0)

print(currentTemperature.celsius)                   // если использовать в init, то на выходе будет только переменная структуры как результат вычисления ?   а в mutating func действия, на выходе могут быть сама объявленная функция ?
print(boiling.celsius)


struct Temperature2 {
  let celsius: Double

  var fahrenheit: Double {         // вычисляемая переменная
    celsius * 1.8 + 32
  }

  var kelvin: Double {             // вычисляемая переменная
    celsius + 273.15
  }

}

let currentTemperature2 = Temperature2(celsius: 0.0)
print(currentTemperature2.celsius)
print(currentTemperature2.kelvin)


struct Book2 {
    var name: String
    var description: String
    var pageCount: Int
    
    mutating func changeName(name: String) {
        self.name = name                       // self.name это обращение к переменной структуры на не функции
    }
}

var myBook2 = Book2(name: "Harry Potter", description: "Text", pageCount: 200)

print(myBook2.name)
myBook2.changeName(name: "Игра престолов")
print(myBook2.name)
*/


print("Задание 1 ____________________________________________")
struct GPS {
    var latitude: Double = 0.0
    var longitude: Double = 0.0
    
}
var somePlace = GPS()
print(somePlace.latitude)
print(somePlace.longitude)

somePlace.latitude = 51.514004
somePlace.longitude = 0.125226
print(somePlace.latitude)
print(somePlace.longitude)

print("Задание 2 ____________________________________________")
struct Book {
    var name: String = ""
    var author: String = ""
    var pages: Int = 0
    var price: Double = 0.0
}
var favoriteBook = Book()
print(favoriteBook)
favoriteBook = Book(name: "Мудрость бытия", author: "Омар Хайям", pages: 336, price: 3418.0)
print("Книга - ", favoriteBook.name)
print("Автор - ", favoriteBook.author)
print("Страниц - ", favoriteBook.pages)
print("Цена - ", favoriteBook.price)

print("Задание 3 ____________________________________________")
struct RunningWorkout {
    var distance = 0.0
    var time = 0.0
    var height = 0.0
}
var firstRun = RunningWorkout()
print(firstRun.distance)
print(firstRun.time)
print(firstRun.height)
firstRun = RunningWorkout(distance: 2396, time: 15.3, height: 94)
print("Дистанция:",firstRun.distance,", Время:", firstRun.time,", Высота:", firstRun.height)

print("Задание 4 ____________________________________________")
struct GPS2 {
    var latitude: Double
    var longitude: Double
}
let somePlace2 = GPS2(latitude: 51.514004, longitude: 0.125226)
print("Широта: \(somePlace2.latitude), Долгота: \(somePlace2.longitude)")

print("Задание 5 ____________________________________________")
struct Book2 {
    var name: String
    var author: String
    var pages: Int
    var price: Double
}
var favoriteBook2 = Book2(name: "Мудрость бытия", author: "Омар Хайям", pages: 336, price: 3418.0)
print("Название книги \(favoriteBook2.name), автор \(favoriteBook2.author), страницы \(favoriteBook2.pages), цена \(favoriteBook2.price)")

print("Задание 6 ____________________________________________")
struct Laptop {
    var screenSize: Int = 13
    var repairCount: Int = 0
    var yearPurchased: Int
}
var laptop1 = Laptop(screenSize: 15, yearPurchased: 2023)
var laptop2 = Laptop(repairCount: 5, yearPurchased: 2020)

print("Задание 7 ____________________________________________")
struct Height {
    var heightInInches: Double
    var heightInCentimeters: Double
    
    init (heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches * 2.54
    }
    init (heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters / 2.54
    }
}
var someonesHeight = Height(heightInInches: 65)
print(someonesHeight.heightInCentimeters)
var myHeight = Height(heightInCentimeters: 2.54)
print(myHeight.heightInInches, myHeight.heightInCentimeters)

print("Задание 8 ____________________________________________")
struct User {
    var name: String
    var age: Int
    var height: Double
    var weight: Double
    var activityLevel: UInt8
    
    func memberwise() {
        print("Имя: \(name), Возраст: \(age), Рост: \(height), Вес: \(weight), Активность: \(activityLevel)")
    }
}
var Assemgul = User(name: "Асемгуль", age: 37, height: 161.0, weight: 58.0, activityLevel: 7)
Assemgul.memberwise()

print("Задание 9 ____________________________________________")
struct Distance {
    var meters: Double
    var feel: Double
    
    init (meters: Double) {
        self.meters = meters
        self.feel = meters * 3.28084
    }
    init (feet: Double) {
        self.feel = feet
        self.meters = feet / 3.28084
    }
}
var mile = Distance(meters: 1600)

print("\(mile.meters) метров = \(mile.feel) футам")
mile = Distance(feet: 3.28084)
print("\(mile.feel) футов = \(mile.meters) метров")

print("Задание 10 ____________________________________________")
struct Book3 {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    func description() {
        print("\(title), written by \(author), is \(pages) pages long and costs \(price) dollars")
    }
}
var book = Book3(title: "Harry Potter", author: "J. K. Rowling", pages: 3636, price: 30000)
book.description()

print("Задание 11 ____________________________________________")
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    mutating func like() {
        likes += 1
    }
}
var post = Post(message: "I like you", likes: 1, numberOfComments: 7)
print(post.likes)
post.like()
print(post.likes)

print("Задание 12 ____________________________________________")
struct RunningWorkout2 {
    var distance: Double
    var time: Double
    var elevation: Double
    
    func postWorkoutStats() {
        print("Distance: \(distance)m\nTime: \(time)s\nElevation \(elevation)m")
    }
}
var monRunning = RunningWorkout2(distance: 1600, time: 20, elevation: 1.5)
monRunning.postWorkoutStats()

print("Задание 13 ____________________________________________")
struct Steps {
    var steps: Int
    var goal: Int
    
    mutating func takeStep() {
        steps += 1
    }
}
var instancesSteps = Steps(steps: 5000, goal: 4500)
print(instancesSteps.steps)
instancesSteps.takeStep()
print(instancesSteps.steps)

print("Задание 14 ____________________________________________")
struct Rectangle {
    var width: Int
    var height: Int
    var area: Int {
        width * height
    }
}
var flat = Rectangle(width: 10, height: 15)
print(flat.area)

print("Задание 15 ____________________________________________")
struct Height2 {
    var heightInInches: Double {
        didSet {
            let inCm = heightInInches*2.54
            if heightInCentimeters != inCm {
                heightInCentimeters = inCm
            }
        }
    }
    var heightInCentimeters: Double {
        didSet {
            let inInches = heightInCentimeters/2.54
            if heightInInches != inInches {
                heightInInches = inInches
            }
        }
    }
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches*2.54
    }
    init(heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters/2.54
    }
}
var uHeight = Height2(heightInInches: 1.0)
print(uHeight.heightInCentimeters)

print("Задание 16 ____________________________________________")
struct RunningWorkout3 {
    var distance: Double
    var time: Double
    var elevation: Double
    var averageMileTime: Double {
        (time/distance)*1600
    }
}
var runnig = RunningWorkout3(distance: 10000, time: 120, elevation: 14)
print(runnig.averageMileTime)

print("Задание 17 ____________________________________________")
struct Steps2 {
    var steps: Int {
        willSet {
            if newValue == goal {
                print("Пздравляю, Вы достигли своей цели!")
            }
        }
    }
    var goal: Int
    
    mutating func takeStep() {
        steps += 1
    }
}
var mySteps = Steps2(steps: 9999, goal: 10000)
mySteps.takeStep()

