import UIKit

//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLSfMP0S1YlzHOLzFpuHuI8awmoBDZ1kpJ-4Q0PUtrgQMXNOoGQ/viewform)
//: ## Home Work 2

/*:
 ### Задание 1
 1.1 Объявите два свойства с типом `Float` и присвойте каждому число с дробной частью — например, 3.14 или 42.0
 
 1.2 Объявите еще одно свойство с типом `Double` и присвойте ей сумму двух переменных типа `Float`
 
 1.3 Выведите результат при помощи `print()`
 */

let firstNumber: Float = 3.5
let secondNumber: Float = 7.0

let sumOfNumbers = Double(firstNumber) + Double(secondNumber)

print(sumOfNumbers)
 
/*:
 ### Задание 2
 2.1 Создайте переменную `numberOne` и присвойте ей любое целочисленное значение
 
 2.2 Создайте ещё одну целочисленную переменную `numberTwo` и присвойте ей любое значение меньше `numberOne`
 
 2.3 Присвойте новой целочисленной константе `result` результат деления `numberOne` на `numberTwo`
 
 2.4 Присвойте новой целочисленной константе `remainder` остаток от деления `numberOne` на `numberTwo`
 
 2.5 Выведите на консоль сообщение: «При делении <...> на <...> результат равен <...>, остаток равен <...>», подставив вместо (<...>) свои результаты.
 
 2.6 Выведите на консоль фразу: «Результат деления <...> на <...> равен <...> <...>/<...>». Поясню: в математике результатом деления 5 на 3 будет натуральная дробь 1 2/3 (одна целая две третьих, здесь мы используем стандартную математическую запись, а не оператор деления). Вам необходимо вывести на консоль именно такой результат от деления `numberOne` на `numberTwo` в виде натуральной дроби — например «Результат деления 7 на 3 равен 2 1/3».
 
 */

let numberOne = 5
let numberTwo = 3

let result = numberOne / numberTwo
let remainder = numberOne % numberTwo

let firstMessage = "При делении \(numberOne) на \(numberTwo) результат равен \(result), остаток равен \(remainder)"
let secondMessage = "Результат деления \(numberOne) на \(numberTwo) равен \(result) \(remainder)/\(numberTwo)"

print(firstMessage)
print(secondMessage)

/*:
 ### Задание 3
 3.1 Объявите константу `dayOfBirth` и присвоейте ей дату вашего рождения
 
 3.2 Объявите константу `monthOfBirth` и присвоейте ей месяц вашего рождения
 
 3.3 Объявите константу `yearOfBirth` и присвоейте ей год вашего рождения
 
 3.4 Необходимо рассчитать прожитое вами время время с момента вашего рождения по текущую дату в разных единицах измерения (в годах, месяцах, днях и секундах). За текущее время возьмите сегодняшнюю дату и 0 часов 0 минут. Високосные года учитывать не надо. Пусть среднее количество дней в месяце будет 30. Создайте необходимые для решения данной задачи свойства. Для расчета всех необходимых величин используйте только арифметические операторы. Ни каких функций использоваться не должно.
 
 3.5 Выведите результат решения на консоль в виде текста (n years, n months, n days and n seconds have passed since my birth). Можете использовать свой текст. Например, если я родился 9 ноября 1980 года, а текущая дата 29.01.20, то результат будет следующим: **39 years, 470 months, 14120 days and 1219968000 seconds have passed since my birth**
 
 3.6 Выведите на консоль сообщение о том в каком квартале вы родились. Для этого используейте операторы сравнения, что бы сравнить номер месяца вашего рождения с одним из четрырех кварталов. Например если номер месяца больше 0 и меньше или равно 3, то это будет первый квартал. Для получения результата используйте конструкцию if
 */

let dayOfBirth = 15
let monthOfBirth = 12
let yearOfBirth = 1994

let currentDay = 8
let currentMonth = 11
let currentYear = 2020

let daysInYear = 365
let daysInMonth = 30
let monthInYear = 12
let hoursInDay = 24
let minutesInHour = 60
let secondesInMinute = 60

var yearsSinceMyBirth = currentYear - yearOfBirth
var daysSinceMyBirth = yearsSinceMyBirth * daysInYear
let monthDelta = currentMonth - monthOfBirth
let daysDelta = currentDay - dayOfBirth
daysSinceMyBirth = daysSinceMyBirth + daysDelta + (monthDelta * daysInMonth)
let secondsSinceMyBirth = daysSinceMyBirth * hoursInDay * minutesInHour * secondesInMinute
let monthSinceMyBirth = daysSinceMyBirth / daysInMonth
yearsSinceMyBirth = monthSinceMyBirth / monthInYear

let messageForConsole = "\(yearsSinceMyBirth) years, \(monthSinceMyBirth) months, \(daysSinceMyBirth) days and \(secondsSinceMyBirth) seconds have passed since my birth"

print(messageForConsole)

var quarter: Int = 0

if 1...3 ~= monthOfBirth {
    quarter = 1
} else if 4...6 ~= monthOfBirth {
    quarter = 2
} else if 7...9 ~= monthOfBirth {
    quarter = 3
} else if 10...12 ~= monthOfBirth {
    quarter = 4
} else {
    print("Something is wrong")
}

let messageAboutQuarterOfBirth = "Я родился в \(quarter) квартале"
print(messageAboutQuarterOfBirth)
/*:
 ### Задание 4. Депозитный калькулятор

 Сколько процентов(X) составит выплата по депозиту в A рублей при ставке B% годовых если забрать его через C лет? При условии, что проценты считаются только с тела депозита.

 А,B,C - входные параметры, X - искомое
 
 P.S. Помните, переменные нужно называть, чтоб они были понятными :-)
 
 Пример вывода "Выплата по депозиту суммой <значение> (ставка <значение>%) через <значение> лет будет <значение>%"
 
 */

let percentOfContribution: Int
let deposit = 1000
let rate = 5
let yearsOfContribution = 7
let oneHundredPercent = 100

let paymentForOneYear = deposit / oneHundredPercent * rate
let paymentForAllYears = paymentForOneYear * yearsOfContribution
let commonSumm = deposit + paymentForAllYears
percentOfContribution = (oneHundredPercent * commonSumm / deposit) - oneHundredPercent

let messsageWithResult = "Выплата по депозиту суммой \(deposit)(ставка \(rate)%) через \(yearsOfContribution) лет будет \(percentOfContribution)%"
print(messsageWithResult)
