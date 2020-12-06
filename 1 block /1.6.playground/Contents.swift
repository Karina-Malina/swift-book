import UIKit
import Foundation

//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLScqx-buXGfB6bpfXQyxpL7U5k6XtSFRwos2f8f-mKhqwiXY_w/viewform)

//: # Home Work 6

/*:
 ## Задание 1
 1.1 Создайте новый класс `Orange` со следующими свойствами:
 
 - `color: String`
 
 - `taste: String`
 
 - `radius: Double`
 
 На ваше усмотрение можете создать или не создавать инициализатор
 */
class Orange {
    let color: String
    let taste: String
    let radius: Double
    var orangeVolume: Double = 0
    
    func calculateOrangeVolume() -> Double {
        orangeVolume = (4 * Double.pi * pow(radius, 3)) / 3
        return orangeVolume
    }
    
    init(color: String, taste: String, radius: Double) {
        self.color = color
        self.taste = taste
        self.radius = radius
    }
}

//: 1.2 Создайте экземпляр класса `Orange` с именем `someOrange`
let someOrange = Orange(color: "Orange", taste: "Sweet", radius: 95)
/*:
 1.3 Проинициализируйте все переменные объекта someOrange следующими значениями:
 
 - `color` — *Orange*
 
 - `taste` — *Sweet*
 
 - `radius` — *95*
 */
//выше уже проинициализировала
//: 1.4 Выведите на консоль сообщение «Orange has <...> color and <...> taste». Обращайтесь к этим значениям напрямую через экземпляр класса, не создавая для них отдельных переменных
print("Orange has \(someOrange.color) color and \(someOrange.taste) taste")
//: 1.5 Создайте новую константу `orangeVolume` и присвойте ей значение объема апельсина (Число Пи в Swift можно получить через константу `Double.pi`. Формулу расчета можно погуглить). Выведите значение `orangeVolume` на консоль
let orangeVolume = (4 * Double.pi * pow(someOrange.radius, 3)) / 3
/*:
 1.6 Дополните класс `Orange` новым свойством `orangeVolume`
 
 1.7 Создайте в классе `Orange` новый метод `calculateOrangeVolume` и перенесите в него расчет объема апельсина
 
 1.8 Вызовите метод calculateOrangeVolume
 */
someOrange.calculateOrangeVolume()
/*:
 ## Задание 2
 2.1 Создайте структуру `Car` со следующими элементами:
 - `name: String`
 - `porductionYear: Int`
 - `horsePower: Int`
 */
struct Car {
    var name: String
    let productionYear: Int
    var horsePower: Int
}
//: 2.2 Создайте экземпляр структуры `Car` с названием какого либо автомобильного бренда, например `honda`.
let bentley = Car(name: "Bentley", productionYear: 2020, horsePower: 205)
//: 2.3 Создайте копию экземпляра `honda`, например, `hondaCivic`
var bentleyContinental = bentley
//: 2.4 Присвойте новое значение переменной name структуры `hondaCivic`
bentleyContinental.name = "Bentley Continental"
//: 2.5 Создайте цикл с пятью итерациями, в котором в каждой итерации необходимо увеличивать значение horsePower у структуры hondaCivic на единицу
for _ in 1...5 {
    bentleyContinental.horsePower += 1
}
//: 2.6 Выведите значения структур `honda` и `hondaCivic` на консоль в следующем виде: "Мощность двигателя <..> составляет <...> л.с."
print("Мощность двигателя \(bentley.name) составляет \(bentley.horsePower) л.с.")
print("Мощность двигателя \(bentleyContinental.name) составляет \(bentleyContinental.horsePower) л.с.")
/*:
 ## Задание 3
 3.1 Создайте структуру `PlayerInChess`, в которой есть два свойства: `name` с типом `Sting` и `wins` с типом `Int`
 
 3.2 Создайте экзмепляр струкутуры и инициализируйте её свойства
 
 3.3 Расширьте структуру PlayerInChess методом description, который должен выводить на консоль имя игрока и количество его побед
 
 3.4 Вызвите данный метод из экземпляра структуры
 */
struct PlayerInChess {
    let name: String
    var wins: Int
    
    func description() {
        print("Игрок \(name) выиграл в этом сезоне \(wins) игр")
    }
    
    mutating func addWins(numberWins: Int) {
        wins += numberWins
    }
}

var somePlayer = PlayerInChess(name: "Tom", wins: 0)

somePlayer.description()
/*:
 3.5 Расширте структуру методом addWins, который должен принимать целочисленное значение и увеличивать количество побед на это значение.
 
 3.6 Вызовите метода addWins из экземпляра структуры, затем вызовите метод description
 */
somePlayer.addWins(numberWins: 3)
somePlayer.description()
/*:
 ## Задание 4
 3.1 Создайте класс `Employee` (сотрудник) со следующими свойствами:
 
 - `salary`
 
 - `name`
 
 - `surname`
 */
class Employee {
    let salary: Int
    let name: String
    let surname: String
    
    init(salary: Int, name: String, surname: String) {
        self.salary = salary
        self.name = name
        self.surname = surname
    }
    
    func evenSalary(salary: Int) -> Bool {
        salary % 2 == 0
    }
}
//: 4.2 Создайте массив из 5 объектов под названием `names` со следующими элементами: *John*, *Aaron*, *Tim*, *Ted*, *Steven*. И еще один массив `surnames` с элементами: *Smith*, *Dow*, *Isaacson*, *Pennyworth*, *Jankins*
let names = ["John", "Aaron", "Tim", "Ted", "Steven"]
let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]
//: 4.3 Объявите массив `employees` и создайте цикл, в котором он заполняется десятью объектами класса `Employee` таким образом, что свойства `name` и `surname` инициализируются случайными именами и фамилиями из массивов `names` и `surnames`, соответственно. Свойство `salary` (зарплата) тоже должно генерироваться в случайном диапазоне от *$1000* до *$2000*
var employees = [Employee]()

for _ in 1...10 {
    let randomIndexForName = Int.random(in: 0...(names.count - 1))
    let randomIndexForSurnames = Int.random(in: 0...(surnames.count - 1))
    let randomSalary = Int.random(in: 1000...2000)
    let oneEmployee = Employee(salary: randomSalary,
                               name: names[randomIndexForName],
                               surname: surnames[randomIndexForSurnames])
    employees.append(oneEmployee)
}
//: 4.4 Пройдитесь по массиву `employees` при помощи `for-in` и выведите информацию по каждому объекту в виде: «<имя> <фимилия>’s salary is $<... >»
for employee in employees {
    print("\(employee.name) \(employee.surname)`s salary is $\(employee.salary)")
}
//: 4.5 Создайте отдельный массив на основании `employees`, который включает только тех работников, зарплата которых чётная. Выведите информацию по каждому сотруднику с четной зарплатой, как в пункте 3.4
var evenSalaryEmployees = [Employee]()

for employee in employees {
    guard employee.evenSalary(salary: employee.salary) else { continue }
    evenSalaryEmployees.append(employee)
}

for employee in evenSalaryEmployees {
    print("\(employee.name) \(employee.surname)`s salary is $\(employee.salary)")
}
