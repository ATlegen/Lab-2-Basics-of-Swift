// Создание словаря
/*
var scores = ["Richard": 500, "Luke": 400, "Cheryl": 800]   // Ключ: Значение

var myDictionary1 = [String: Int]()
var myDictionary2 = Dictionary<String, Int>()
var myDictionary3: [String: Int] = [:]

scores["Luke"] = 1000      // Создаем/присваиваем значение в указанный ключ
print(scores)
scores.updateValue(700, forKey: "Cheryl") // 2 способ начение в указанный ключ
print(scores)

scores["Richard"] = nil          // УДАЛЕНИЕ элемента со значением
print(scores)

if let removedValue = scores.removeValue(forKey: "Cheryl") {  // 2 способ элемента со значением
    print(removedValue)
}
print(scores)


var postIndexesKZ = ["Aktobe": 20400, "Kostanai": 458000, "Atyrau": 465020, "Kokshetau": 475000]
print(postIndexesKZ)

postIndexesKZ["Uralsk"] = 090000       // ДОБАВЛЯЕМ новый элемент в словарь
print(postIndexesKZ)

var oldValue = postIndexesKZ.updateValue(100000, forKey: "Aktobe")   // МЕНЯЕМ значение элемента по ключу

if let oldValue = postIndexesKZ.updateValue(500000, forKey: "Aktobe") { // только через if возвращаем старое значение для печати
    print(oldValue)
}
print(postIndexesKZ)

let cities = Array(postIndexesKZ.keys)   // СОЗДАЕМ МАССИВ из ключей словаря
let indexes = Array(postIndexesKZ.values)  // САЗДАЕМ МАССИВ из значении словаря

if let uralskIndex = postIndexesKZ["Uralsk"] {   // БЕРЕТ ЗНАЧЕНИЕ указанного ключа
    print(uralskIndex)
}
*/

// Задание 1

var dictionary: [String: Int] = ["January": 31, "February": 28, "March": 31]
print(dictionary)

dictionary["April"] = 30
print(dictionary)

dictionary.updateValue(29, forKey: "February")
print(dictionary)

if let daysJanuary = dictionary["January"] {
    print("January has \(daysJanuary) days")
}


// Задание 2

var shapesArray: [String] = ["triangle", "circle", "square", "rhombus"]
var colorsArray: [String] = ["blue", "red", "yellow", "green"]
var toysArray: [String: [String]] = ["shapes": shapesArray, "colors": colorsArray]
print(toysArray)

if let color = toysArray["colors"] {
    print(color[3])
}
