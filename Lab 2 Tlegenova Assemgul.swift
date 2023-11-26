// Задание 1

// результат:
// 1. true
// 2. false
// 3. false
// 4. true
// 5. true
// 6. false
// 7. false
// 8. true
// 9. false

print("1. ",9==9)
print("2. ",9 != 9)
print("3. ",47>90)
print("4. ",47<90)
print("5. ",4<=4)
print("6. ",4>=5)
print("7. ",(47>90) && (47<90))
print("8. ",(47>90) || (47<90))
print("9. ",!true)

// Задание 2

var tenge  = 0 
if tenge <= 0 {
print("Извини, жаным, ты на мели!")
}

tenge = 300
if tenge<=0 {
    print("Извини, жаным, ты на мели!")
} else {
    print("Вау, у тебя есть деньги на пирожки!")
}

tenge = 2000
if tenge<=0 {
    print("Извини, жаным, ты на мели!")
} else if (tenge>0) && (tenge<400) {
    print("Вау, у тебя есть деньги на пирожки!")
} else {
    print("Ого, поедешь домой на такси")
}

// Задание 3

//var menuRestaurant1 = "Беш, Стейк"
//var menuRestaurant2 = "Беш, Веган, Cтейк"
//var menuRestaurant3 = "Веган"
// Не заню с помошью чего реализовать?
// использовать работу со строками или 
// работать c булиан?

let dishStyk = false
let dishBesh = true
let dishVegan = true

if (dishVegan && dishBesh) || (dishVegan && dishStyk) {
    print("Поехали!")
} else {
    print("Извините, нам придется подумать о другом месте")
}

// Задание 4

let isNiceWeather: Bool
let temperature = 29
let rain = false
let sun = true

if (temperature < 27 && sun == true) || rain == false {
    isNiceWeather = true
    print("Иду на прогулку!")
} else {
    isNiceWeather = false
}


