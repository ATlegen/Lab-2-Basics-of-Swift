/*
let temperature = 70
switch temperature {
    case 65...75:
    print("Температура идеальная")
    case Int.min...64:
    print("Очень холодно")
    default:
    print("Очень жарко")
}


let name = "Асемгул"
var ageA = 38
print("\(name)е \(ageA). Она из города Уральск. Она \(2023-ageA) года.") // вывод переменных вместе с текстом

let myName = "Tlegenova Assemgul"
print(myName.lowercased())
print("TleGEnoVa ASsemGuL".lowercased())  // переводит все буквы в прописные

if myName.lowercased() == "TleGEnoVa ASsemGuL".lowercased() {
    print("Одинаковые")
} else {
    print("Они не одинаковые")
}

var greeting = "Hello world!"
print(greeting.hasPrefix("Hello"))  // проверка начала текста
print(greeting.hasSuffix("world!"))  // проверка конца текста
print(greeting.hasSuffix("World!".lowercased()))

var fio1 = "Тлегенова Асемгуль"
var fio2 = "Тлегенов Али"
if fio1.hasPrefix("Тлегенов") == fio2.hasPrefix("Тлегенов") {
    print("Они родственники, брат/сестр/мать/отец")
} else {
    print("Они не родственники")
}

let greeting2 = "Привет Аселхан, меня зовут Асемгуль."
if greeting2.contains("меня зовут") {
    print("Такое слово есть в таксте")
}

let mail = "n1girl@bk.ru"
if mail.contains("@") && mail.contains(".") {  // проверка состава, содержания текста
    print("Почта принята")
} else {
    print("Не верная почта")
}

let yourName = "Ryan Mears"
let count = yourName.count   // вычисляет количество символов в тексте
print(count)
*/






// Дополнительные задания на тему if-else, switch case


// Задание 1
var Season = 1
switch Season {
    case 1:
    print("Зима")
    case 2:
    print("Весна")
    case 3:
    print("Лето")
    default:
    print("Осень")
}

// Задание 2
var guest = "Айнура"
switch guest {
    case "Айнура", "Тамирис", "Раушан", "Акмарал", "Гуля", "Сабина", "Айгерим", "Бота", "Аяна":
    print("Добро пожаловать!")
    default: 
    print("Вас нет в списке.")
}

// Задание 3

var age = 15
if age >= 0 && age <= 2 {
    print("Младенец")
    }
    else if age > 2 && age <= 14 {
        print("Детский билет")
    }
    else if age > 14 {
        print("Взрослый билет")
    }
    
// Задание 4 

var dish1 = 2500
var dish2 = 3000
//var ExpensiveDish:Int
var ExpensiveDish = dish1 < dish2 ? dish2: dish1
print(ExpensiveDish)

//Задание 5 

var plan = 4 
switch plan {
    case 1:
    print("Сходить к стоматологу")
    case 2:
    print("Сходить в зал и купить куртку, урок по основам программирования")
    case 3:
    print("Сходить в кино и поиграть с друзьями")
    case 4:
    print("Подготовиться к он-лайн обучение по основам программирования")
    case 5:
    print("Работа и зал, вечерем кальян")
    case 6:
    print("Сходить к косметологу, изучать основу программирования")
    default:
    print("Уборка дома и стирка, вечерняя прогулка")
}

// Задание 6 

var metroStation = "A"
var travelTime = 25

switch metroStation.lowercased() {
    case "a":
    print("Станция метро: Абая, время в пути: \(travelTime) минут.")
    case "b":
    print("Станция метро: Байканур, время в пути: \(travelTime) минут.")
    case "c":
    print("Станция метро: Москва, время в пути: \(travelTime) минут.")
    case "d":
    print("Станция метро: Жибек Жолы, время в пути: \(travelTime) минут.")
    case "e":
    print("Станция метро: Алатау, время в пути: \(travelTime) минут.")
    default:
    print("Станции метро с таким кодом нет. Попробуйти ввести букву еще раз: ")
}

// Задание 7 

// 1 доллар
// 2-4 доллара
// .9, 21 24
// 5-9,.0 долларов
// 11 долларов

var amount = 8025

if amount%10 == 1 && amount%100 != 11 {
    print("У вас \(amount) доллар")
} else if (amount%10 >= 2) && (amount%10 <= 4) && (amount%100 < 10 || amount%100 >= 20) {
    print("У вас \(amount) доллара")
} else {
    print("У вас \(amount) долларов")
}

// Задание 8

var finger = 3 

switch finger {
    case 1:
    print("Большой палец")
    case 2:
    print("Указательный палец")
    case 3:
    print("Средний палец")
    case 4:
    print("Безимянный палец")
    case 5:
    print("Мизинец")
    default: break
}

