
// Задание 1

func intoduceMyself() {
    print("Привет меня зовут, Асемгуль")
}
intoduceMyself()

// Задание 2

var steps = 0

func incrementSteps() {
    steps += 1
    print("\(steps) 🏃‍♀️")
}

incrementSteps()
incrementSteps()
incrementSteps()
incrementSteps()

let goal = 10_000.0
var urSteps = 11_000.0

func progressUpdate() {
    urSteps += 1
    if urSteps <= (goal*0.1) {
        print("У вас хорошее начало")
    } else if urSteps <= (goal*0.5) {
        print("Вы почти на пол пути!")
    } else if urSteps <= (goal*0.9) {
        print("Вы на пол пути!")
    } else if urSteps < (goal) {
        print("Вы почти у цели!")
    } else {
        print("Вы превзошли свою цель! Вы сделали \(Int(urSteps)) шагов!")
    }
}

progressUpdate()

// Задание 3

func introduction(_ name:String, _ home:String, _ age:Int) {
    print("\(name), возраст \(age), город \(home)")
}

introduction("Асемгуль", "Уральск", 37)

// Задание 4


func progressUpdate(_ steps2:Int, _ goal2:Int) {
    if steps2 <= ((goal2/100)*10) {
        print("У вас хорошее начало")
    } else if steps2 <= ((goal2/100)*50) {
        print("Вы почти на пол пути!")
    } else if steps2 <= ((goal2/100)*90) {
        print("Вы на пол пути!")
    } else if steps2 < (goal2) {
        print("Вы почти у цели!")
    } else {
        print("Вы превзошли свою цель! Вы сделали \(steps2) шагов!")
    }
}
progressUpdate(950, 10_000)
progressUpdate(4500, 10_000)
progressUpdate(6000, 10_000)
progressUpdate(9999, 10_000)
progressUpdate(11_000, 10_000)


func pacing(currentDistance:Double, totalDistance:Double, currentTime:Double, goalTime:Double) {
    let pace = currentTime/(currentDistance/totalDistance)
    if pace < goalTime {
        print("Тебе нужно поднапрячся немного сильнее!")
    } else {
        print("Так держать!")
    }
}

// Задание 5

func greeting(_ name: String) -> String {
    "Привет \(name), как твои дела?"
}
print(greeting("Олжас"))

func formula(_ a:Int, _ b:Int) -> Int {
    (a * b) + 2
}
print(formula(3, 2))
