/*
class Human {                   //Базовый класс
    let name:String
    var age: Int
    var weight: Double
    
    init(name: String, age: Int, weight: Double) {
        self.name = name
        self.age = age
        self.weight = weight
    }
}

var human1 = Human(name: "Anya", age: 20, weight: 52)
print("\(human1.name), \(human1.weight) kg")


class Teacher: Human {                  // Саб класс Human
    var favoriteStudent: String  // так же можно делать вычисляемую функцию через {}
    
    init(name:String, age: Int, weight: Double, favoriteStudent: String) {
        self.favoriteStudent = favoriteStudent
        super.init(name: name, age: age, weight: weight)
    }
    func teach() {                         // Так же можем сделать пустым что другие саб классы сами переопределяли
        print("I am a teacher")
    }
}

var teacher1 = Teacher(name: "Dasha", age: 25, weight: 49, favoriteStudent: "Yera")
print(teacher1.favoriteStudent)
teacher1.teach()


class MathTeacher: Teacher {        // Саб клас Teacher
    
    override func teach() {         // Переписываем/ переопределяем функция
        print("Let`s learn about integrals")
    }
}

var mathTeacherAida = MathTeacher(name: "Aida", age: 19, weight: 55, favoriteStudent: "Olga")
mathTeacherAida.teach()

class Programmer: Human {
    var laptop: String           //так же можем переопределять вычисляемые свойства через override var, и обращаемся к старому значению через super.
    
    init(name: String, age: Int, weight: Double, laptop: String) {
        self.laptop = laptop
        super.init(name: name, age: age, weight: weight)
    }
    func coding() {
        print("I am coding")
    }
}

var assemgul = Programmer(name: "Assemgul", age: 37, weight: 57, laptop: "MacBook")
print(assemgul.laptop)
assemgul.coding()


// value type - Int, String, Struct,....
// reference type - class.  это значит все приравненные "=" переменные одного класса связаны и изменение в одной переменной приведет изменению и в другой, так как ссылается а не присваивает значения
*/

print("Задание 1 __________________________________________")
class Spaceship {
    var name: String
    var health = 0
    var position = 0
    
    init(name: String, health: Int = 0, position: Int = 0) {
        self.name = name
        self.health = health
        self.position = position
    }
    func moveLeft() {
        self.position -= 1
    }
    func moveRight() {
        self.position += 1
    }
    func wasHit() {
        self.health -= 5
        if self.health <= 0 {
            print("Извините, ваш корабль был сбит слишком много раз. Хотите сыграть еще раз?")
        }
    }
}

let falcon = Spaceship(name: "Falcon", health: 0, position: 0)
falcon.moveLeft()
falcon.moveLeft()
falcon.moveRight()
print(falcon.position)
falcon.wasHit()
print(falcon.health)

print("Задание 2 __________________________________________")
class Fighter: Spaceship {
    var weapon: String
    var remainingFirePower: Int

    init(name: String, health: Int, position: Int, weapon: String = "", remainingFirePower: Int = 5) {
        self.weapon = weapon
        self.remainingFirePower = remainingFirePower
        super.init(name: name, health: health, position: position)
    }
    func fire() {
        if remainingFirePower <= 0 {
            print("У вас больше нет оружейной мощности")
        } else {
            remainingFirePower -= 1        }
    }
}

var destroyer = Fighter(name: "Destroyer", health: 10, position: 0)
destroyer.weapon = "лазер"
destroyer.remainingFirePower = 10
print(destroyer.position)
destroyer.moveRight()
print(destroyer.position)
// print(falcon.weapen)  не работает потому что у его класса нет такого свойства weapen

destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)

print("Задание 3 __________________________________________")

class ShieldedShip: Fighter {
    var shieldStrength = 25
    
    init(name: String, health: Int, position: Int, weapon: String = "", remainingFirePower: Int = 5, shieldStrength: Int = 25 ) {
        self.shieldStrength = shieldStrength
        super.init(name: name, health: health, position: position)
    }
    override func wasHit() {
        if self.shieldStrength > 0 {
            self.shieldStrength -= 5
        } else if self.shieldStrength == 0 {
            super.wasHit()
        }
    }
}

var defender = ShieldedShip(name: "defender", health: 10, position: 0, weapon: "Cannon")

defender.moveRight()
print(defender.position)
defender.fire()
print(defender.remainingFirePower)

defender.wasHit()
print(defender.shieldStrength)
print(defender.health)

defender.wasHit()
print(defender.shieldStrength)
print(defender.health)

print("Задание 4 __________________________________________")

var sameShip = falcon
print(sameShip.position)
print(falcon.position)

sameShip.moveLeft()
print(sameShip.position)
print(falcon.position)
print("reference type - class.  это значит все приравненные \"=\" переменные одного класса связаны и изменение в одной переменной приведет изменению и в другой, так как ссылается а не присваивает значения\n Если в место класса использовать структуру между переменными не было связи кроме похожей структуры и похожих методов")
