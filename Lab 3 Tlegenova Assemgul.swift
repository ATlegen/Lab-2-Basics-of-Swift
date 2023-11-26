// Задание 1

let name = "Асемгуль"
print(name)

let favoriteQuote = "Ты - не господин сказанного слова, а слова сказанного - ты слуга"
print("Моя любимая цитата - \"\(favoriteQuote)\"")

let emptyString = ""
if emptyString.isEmpty {
    print("Там ничего нет")
} else {
    print("Кажется там что-то есть")
}

// Задание 2

var city = "Уральск"
var region = "ЗКО"
var home = city + ", " + region
print(home)

var intoduction = "Я живу в "
//print(intoduction + home)
intoduction += home
print(intoduction)

let myName = "Асемгуль"
let age = 37
print("Меня зовут \(myName), и на следующий год мне будет \(age+1) лет»")

// Задание 3

let myNameIs = "Асемгуль "
let surName = "Тлегенова"
let fullName = myNameIs + surName
print(fullName)

var previousBest = 7689
var newBest = 10058
let congratulations = "Поздравляем, \(fullName)! Вы превзошли свой предыдущий рекорд в \(previousBest) шагов, сделав \(newBest) шагов вчера!"
print(congratulations)

// Задание 4.1

let nameInCaps = "АСЕМГУЛЬ"
let nameIs = "асемгуль"
if nameInCaps == nameIs {
    print("Эти две строки равны")
} else {
    print("Эти две строки не равны")
}

// Задание 4.2

if nameInCaps.lowercased() == nameIs.lowercased() {
    print("\(nameInCaps) и \(nameIs) совпадают")
} else {
    print("\(nameInCaps) и \(nameIs) не совпадают")
}

// Задание 4.3 

let name1 = "Robert Downey Jr."
let name2 = "Robert Downey"
if name1.hasSuffix("Jr.") {
    print("\(name1) это имя используется второе поколение")
}
if name2.hasSuffix("Jr.") {
    print("\(name2) это имя используется второе поколение")
}
// Задание 4.4

let textToSearchThrough = "быть или не быть вот в чём вопрос" 
let textToSearchFor = "быть или не быть"
if textToSearchThrough.contains("быть или не быть") {
    print("Я нашел!")
}
if textToSearchFor.contains("быть или не быть") {
        print("Я нашел!")
}

// Задание 4.5 

print(name.count)

// Задание 5 
let login = "Assemgul"
let password = "jnMKf76"
if password == "jnMKf76" && login.lowercased() == "assemgul" {
    print("Вы вошли в систему!")
} else {
    print("Пожалуйста, проверьте ваше имя пользователя и пароль и попробуйте еще раз")
}