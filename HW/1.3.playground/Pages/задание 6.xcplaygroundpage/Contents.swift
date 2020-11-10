import Foundation

/*:
 ### Задание 6
 6.1 Создайте перечисление `CalculationType`, содержащее четыре математических действия — *сложение*, *вычитание*, *умножение* и *деление* (если не знаете английские наименования — [translate.google.com](http://translate.google.com))
 */
enum CalculationType {
    case addition
    case subtraction
    case multiplication
    case division
}
/*: 6.2 Создайте три константы: число один, число два и тип математической операции(CalculationType).

 В зависимости от значения переменной типа `CalculationType` выполните соответствующую математическую операцию с константами и выведите(print) результат. Для перебора всех возможных результатов используйте конструкцию `switch`. Пример вывода программы: "Результат сложения 6 и 8 равен 14"

 6.3 Создайте перечисление `CurrencyUnit` со следующими членами: `rouble`, `dollar`, `euro`.

 6.4 Внутри перечисления `CurrencyUnit` создайте еще одно перечисление `DollarCountries`, в котором содержится перчень стран, национальной валютой которых является доллар (USA, Canada, Australia)

 6.5 Добавьте в кейс `dollar` ассоциативное значение DollarCountries.

 6.6 Создайте константу типа CurrencyUnit, задайте ей значение доллара Канады.
 */
//6.2
let firstNumber = 10
let secondNumber = 5
let calculationType: CalculationType = .subtraction

switch calculationType {
case .addition:
    let result = firstNumber + secondNumber
    print("Результат сложения \(firstNumber) и \(secondNumber) равен \(result)")
case .subtraction:
    let result = firstNumber - secondNumber
    print("Результат вычитания \(secondNumber) из \(firstNumber) равен \(result)")
case .multiplication:
    let result = firstNumber * secondNumber
    print("Результат умножения \(firstNumber) на \(secondNumber) равен \(result)")
case .division:
    let result = firstNumber / secondNumber
    print("Результат деления \(firstNumber) на \(secondNumber) равен \(result)")
}

//6.3-6.6
enum CurrencyUnit {
    case rouble
    case dollar(value: DollarCountries)
    case euro
    
    enum DollarCountries {
        case USA
        case Canada
        case Australia
    }
}

let currencyUnit: CurrencyUnit = .dollar(value: .Canada)
//: [Ранее: Задание 5](@previous)  |  задание 6 из 6  |

