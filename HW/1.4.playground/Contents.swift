import UIKit

//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLSd1u0QO7NUHombGhJkB0r0o8rsfGvUuVJmMbfWd-2nCbhOaAA/viewform)

//: ## Home Work 4

/*:
 ### Задание 1
 1.1 Пользователь открывает вклад (deposit) в банке на 5 лет на сумму 500 тыс. рублей. Процентная ставка годовых (rate) составляет 11%. Необходимо просчитать сумму дохода (profit) по окончании срока действия (period) вклада.  Для решения данной задачи используйет цикл for-in. Примечание: сумма вклада увеличивается с каждым годом и процент нужно считать уже от увелеченной суммы.
 
 1.2 Выведите результат на консоль в таком виде: "Сумма вклада через <... > лет увеличится на <...> и составит <...>"
 */
var deposit = 500.0
let period = 5
let rate = 11.0
var profitForOneYear: Double = 0
var profit: Double = 0

for _ in 1...period {
    profitForOneYear = deposit * (rate / 100)
    deposit += profitForOneYear
    profit += Double(profitForOneYear)
}

//для красоты переведем ниже цифры в Int
print("Сумма вклада через \(period) лет увеличится на \(Int(profit)) и составит \(Int(deposit))")
/*:
 ### Задание 2
 2.1 Создайте целочисленные переменные `base` и `power` с любым значениями на ваше усмотрение.
 
 2.2 При помощи цикла `for in` возведите переменную `base` в степень `power` и присвойте результат переменной `result`
 
 2.3 Выведите результат на консоль в следующем виде: «<…> в <…> степени равно <…>»
 */
//заменила переменные на константы, потому что в данном примере base и power мы не меняем
let base = 12
let power = 3
var result: Int = base

for _ in 1..<power {
    result *= base
}

print("\(base) в \(power) степени равно \(result)")
/*:
 ### Задание 3
 3.1 Создайте целочисленный массив данных с любым набором чисел.
*/
let array = [1, 4, 6, 7, 134, 5, 79, 12]
//: 3.2 Выведите на консоль все четные числа из массива
var evenNumbers = [Int]()

for number in array {
    if (number % 2) == 0 {
        evenNumbers.append(number)
    }
}

print(evenNumbers)
//: 3.3 Используя оператор Continue выведите на консоль все нечетные числа из массива. Оператор continue предназначен для перехода к очередной итерации, игнорируя следующий за ним код. Т.е. вам нужно выполнить проверку на четность числа, и если оно оказалось четным перейти к следующей итерации.
var oddNumbers = [Int]()

for number in array {
    if (number % 2) == 0 {
        continue
    }
    oddNumbers.append(number)
}

print(oddNumbers)
//: ### Задание 4
//: 4.1 Создайте цикл (интревал можно задать от 1 до 10) в котором будет случайным образом вычисляться число в пределах от 1 до 10. Если число будет равно 5, выведите на коносль сообщение с номером итерации, например (Что бы выпало число 5 понадобилось 3 итерации) и остановите цикл. Для остановки цикла используйте оператор breack. Оператор break предназначен для досрочного завершения работы цикла. При этом весь последующий код в теле цикла игнорируется.
let someNumber = 5
let maxCountIteration = 10
var iterationNumber = 0

for _ in 1...maxCountIteration {
    iterationNumber += 1
    let randomNumber = Int.random(in: 1...10)
    if randomNumber == someNumber {
        print("Чтобы выпало число \(someNumber) понадобилось \(iterationNumber) итерации(й)")
        break
    }
}

if iterationNumber == 10 {
    print("За \(maxCountIteration) итераций число \(someNumber) не выпало")
}
/*:
 ### Задание 5
  5.1 На 10 метровый столб лезет черепашка. За день она забирается на два метра, за ночь съезжает на 1. Определите при помощи цикла, через сколько дней она заберетсья на столб. Подумайте над тем, какой цикл использовать в этой ситуации.
 */
let postHeight = 10
var turtleSeat = 0
let dayPath = 2
let nightPath = -1
var numberDaysPassed: Double = 0

while turtleSeat < postHeight {
    numberDaysPassed += 1
    turtleSeat += dayPath
    if turtleSeat == postHeight {
        break
    } else {
        turtleSeat += nightPath
    }
}
print(numberDaysPassed)
/*:
 ### Задание 6
 Определить сложность алгоритма (с описанием рассуждения)
 
 
 */
// Входные данные, которые могут изменяться
let items = ["Раз", "Два"]


// Начало алгоритма
print("Привет")

for _ in items {
    for item1 in items {
        print("subitem 1 \(item1)")
    }
    for item2 in items {
        print(item2)
    }
}

print("36")
// Конец алгоритма

//Сложность этого алгоритма O(n^2) или Квадратичная, потому что мы имеем два вложенных цикла каждый из которых имеет сложность O(n^2). То есть при увеличении массива items на одно значение количество операций будет n в квадрате. В данном случае количество операций = 4, если добавим еще одно значение, количество операций станет 9
/*:
 ### Задание 7. От Google. Не обязательно решать.
 Дан массив 'a', который содержит целые числа в диапазоне от 1 до 'a.count'.
 Найти повторяющееся число в массиве для которого второе повторение имеет минимальный индекс.
 
 Другими словами, если в массиве есть более чем 1 дублирующееся числа, вывести то число, у которого второе повторение имеет индекс в массиве меньше, чем индекс второго повторения другого числа.
 
 Если повторяющихся чисел нет, то  ничего не выводить в консоль
 
 ПРИМЕР:
 
 Для a = [2, 1, 3, 5, 3, 2], вывод в консоль должен быть "3".

 В массиве есть два числа, которые дублируются: числа 2 и 3. Второе поторение 3 имеет меньший индекс, чем второе повторение 2, значит ответ: 3.
 
 
 Для a = [2, 2], вывод будет 2;

 Для a = [2, 4, 3, 5, 1],вывода не будет.
 
 */
let googleArray = [2, 1, 3, 5, 3, 2]
var googleDictionary = [Int: Int]()
var index = -1
var finalIndex: Int? = nil

//Добавляем в словарь ключ-значение, в котором ключ - это число из массива, а значение - индекс второго повторения
for number in googleArray {
    index += 1
    let containsInDictionary = googleDictionary.contains(where: {$0.key == number})
    let haveDublicate = googleArray.lastIndex(of: number)! != index
    
    if !containsInDictionary && haveDublicate {
        googleDictionary[number] = 0
    } else if containsInDictionary && googleDictionary[number] == 0 {
        googleDictionary[number] = index
    }
}

//Находим самый маленький индекс из словаря
for (_, secondNumberIndex) in googleDictionary {
    if finalIndex == nil {
        finalIndex = secondNumberIndex
        continue
    }
    if secondNumberIndex < finalIndex! {
        finalIndex = secondNumberIndex
    }
}

//Находим нужное число из массива по индексу и выводим в консоль
if let finalIndex = finalIndex {
    let finalNumber = googleArray[finalIndex]
    print("Число, у которого второе повторение имеет индекс в массиве меньше остальных, это \(finalNumber)")
}
