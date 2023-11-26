import Foundation
/*
// Цикл с заданным количеством повторении

for index in 1...5 {                 // 1 способ
  print("Это цифра \(index)")
    
}

for _ in 1...5 {                  // 2 способ
  print("Hello!")
}


let names = ["Joseph", "Cathy", "Winston"]     // цикл перебирает элементы массива
for name in names {
  print("Привет \(name)")
}

for letter in "ABCDEFG" {                          // цикл перебирает символы текста
  print("Это письмо является \(letter)")
}
var count = 0
for (index, letter) in "ASSEMGUL".enumerated() {     //  нумеруют каждое повторение
  print("\(index): \(letter)")
  count += 1
}
print("В слове \(count) букв")

var countt = 0
for letter in "ASSEMGUL" {               //  (2 вариант) нумеруют каждое повторение
    countt += 1
    print("\(countt): \(letter)")
}
print("В слове \(countt) букв")

let vehicles = ["unicycle" : 1, "bicycle" : 2, "tricycle" : 3, "quad bike" : 4]
for (vehicleName, wheelCount) in vehicles {           // если словарь то пишем for с 2мя переменными
  print("\(vehicleName) имеет \(wheelCount) колес")
}

// УСЛОВНЫЙ ЦИКЛ

var numberOfLives = 3
var stillAlive = true
while stillAlive {
  print("I still have \(numberOfLives) lives.")
  numberOfLives -= 1
  if numberOfLives == 0 {
    stillAlive = false
  }
}

for name in names {                         // Пример поиска в массиве нужного значения
    print(name)
    if name == "Winston" {
        print("я нашла тебя \(name)")
        break
    }
}
*/


// Циклы For-In
 // Задание 1
for number in 1...100 {
    print(number)
}
// Задание 2
for (index, letter) in "ABCDEFGHIJKLMNOPQRSTUVWXYZ".enumerated() {
    print("\(index) - \(letter)")
}
// Задание 3
var countries: [String: String] = ["Kazakhstan": "Astana", "France": "Paris", "China": "Hong Kong", "USA": "Washington", "Japan": "Tokyo"]
for (incountry, capital) in countries {
    print("\(incountry) - \(capital)")
}

// Движения
// Задание 4
var movements: [String] = ["walking", "running", "bike"]
for list in movements {
    print("Тренировка: \(list)")
}
// Задание 4.1
var movementHeartRates: [String: Int] = ["Walking": 106, "Running": 135, "Bike": 115, "Swimming": 145]
for (movement, heartRates) in movementHeartRates {
    print("\(movement) - heart rates is \(heartRates)")
}
// Циклы While
// Задание 5
var kubik = 0
while kubik != 1 {
    kubik = Int.random(in: 1...6)
    print("выпала -> \(kubik)")
}
// Шаговая Частота Бега
// Задание 6
var count = 0
var cadence = 120.0
while count < 10 {
    print("Take a step")
    count += 1
    Thread.sleep(forTimeInterval: 60/cadence)
}

var count2 = 0
var cadence2 = 120.0
repeat {                                           // цикл repeat while
    print("Take a step")
    count2 += 1
    Thread.sleep(forTimeInterval: 60/cadence2)
} while count2 < 10

// Control Transfer Statements
// Задание 7
//var Index = 1
//for (index, letter) in "ABCDEFGHIJKLMNOPQRSTUVWXYZ".enumerated() {
//    if index.isMultiple(of: 2) == true || letter.lowercased() == "f" {
//        continue
//    }
//    print("\(index+1) - \(letter)")
//}

for (index, letter) in "ABCDEFGHIJKLMNOPQRSTUVWXYZ".enumerated() {
    if index % 2 == 0 || letter.lowercased() == "f" {
        continue
    }
    print("\(index+1) - \(letter)")
}
          
// Задание 8
var cityKZ: [String: String] = ["Almaty": "Alm", "Uralsk": "Url", "Kokshetay": "Ksh", "Semey": "Sem"]
for (city, short) in cityKZ {
    print("\(city): \(short)")
    if short == "Url" {
        print("\(city) - Я нашел свой дом!")
        break
    }
}
// Поиск движений
// Задание 9

let minHeartRates = 110
let maxHeartRates = 140
for (movement, heartRates) in movementHeartRates {
    if heartRates >= minHeartRates && heartRates <= maxHeartRates {
        print("You could go \(movement)")
    }
}


