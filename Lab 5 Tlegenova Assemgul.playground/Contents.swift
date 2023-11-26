/*
// Обьявление, создание массива (НЕ явный)
var numbers = [5, 78, 56, 9, 23.0]     //по умолчанию становиться типа Double из за 23.0
var friends = ["Samal", "Saltanat", "Bibigul"]

// Обьявление, создание массива (явный)
var myMassiv: [Int] = [2, 6, 9, 4, 7]
var names:[String]=["Ainura", "Bota", "Zamira"]

// 3 способа зоздание пустого массива
var myArray1: [Int] = []
var myArray2: Array<Int> = []
var myArray3 = [Int]()


if numbers.contains(56) {      // ИЩЕТ опраеденное значение в массиве
    print("Тут есть 56")
}

var myArray = [Int](repeating: 5, count: 11) // ЗАПОЛНЕНИЕ МАССИВА: 5 повторить 11 раз
print(myArray)

myArray.isEmpty           // Проверяет пустой ли массив

print(myArray.count)       // Проверяет количество

names.append("Лиза")      // Добавляет 1 элемент в конец массива с указанным значением
print(names)
names += ["Артур", "Римма"]
print(names)

names.insert("Замира", at: 1)  // ДОБАВЛЯЕТ значения в указанный элемент массива
print(names)

names.remove(at:0)         // Удаляет УКАЗАННЫЙ элемент массива
names.removeLast()        // Удаляем ПОСЛЕДНИЙ элемент массива
print(names)
names.removeAll()         //Удаляет ВСЕ элементы массива

// Массивы из массивов

let array1 = [1, 2, 3]
let array2 = [4, 5, 6]
let array3 = [7, 8, 9]
var containerArray = [array1, array2, array3]
print(containerArray)

print(containerArray[2])
print(containerArray[0][2])  //  Значение элемента 0 строки, 2 столбеца

containerArray[2].removeLast()
print(containerArray)

*/

// Задание 1

var registrationList: [String] = []
registrationList.append("Сара")
print(registrationList)

registrationList += ["Рината", "Алина", "Айнура", "Салтанат"]
print(registrationList)

registrationList.insert("Алмас", at: 1)
print(registrationList)

registrationList[5] = "Алуа"
print(registrationList)
var deletedItem = registrationList.removeLast()
print(deletedItem)

// Задание 2

var runningExercises:[String] = ["перекат", "бег назад", "трусцой"]
var walkingExercises:[String] = ["на носках", "гусиным шагом", "скользащим"]
var allExercises = [runningExercises, walkingExercises]

print(allExercises[1][0])
allExercises.removeAll()

var completedExercises:[String] = []
if completedExercises.isEmpty {
    print("Пора двигать булками")
} else if completedExercises.count == 1 {
    print("Вы выбрали упражнение \(completedExercises)")
} else {
    print("Вы выбрали несколько упражнении")
}
