import Foundation

/*:
 ### Задание 5
 5.1 С помощью блоков `case` вы определяете возможные значения, которые может принять выражение. Однако Swift позволяет в пределах одного блока case указать не только на значение рассматриваемого параметра, но и на зависимость от какого-либо условия. Данный функционал реализуется с помощью ключевого слова `where` в блоке `case`.
 
 В этом задании вам необходимо сделать простой валидатор российского номера.
 Если длина номера больше 12, то вывести: сократите номер на N символов
 Если длина номера меньше 12, то вывести: дополните номер на N символов
 Если длина 12 и номер начинается с +7, то вывести: "Номер российский"
 
 (Подсказка: с помощью case проверить длину входного номера, с помощью where - то что он начинается с "+7", в случае, если номер не российский: вывести предупреждение.
 
 
 5.2. Реализуйте ту же логику посредством if else
 
 */
//5.1
let phoneNumber = "+79118433510"
let countSymbolsPhoneNumber = phoneNumber.count

switch countSymbolsPhoneNumber {
case ..<12:
    let delta = 12 - countSymbolsPhoneNumber
    print("Дополните номер на \(delta) символа(ов)")
case 13...:
    let delta = countSymbolsPhoneNumber - 12
    print("Сократите номер на \(delta) символа(ов)")
case 12 where phoneNumber.hasPrefix("+7"):
    print("Номер российский")
default:
    print("Oops: Что-то пошло не так или номер не российский")
}

//5.2
if countSymbolsPhoneNumber < 12 {
    let delta = 12 - countSymbolsPhoneNumber
    print("Дополните номер на \(delta) символа(ов)")
} else if countSymbolsPhoneNumber > 12 {
    let delta = countSymbolsPhoneNumber - 12
    print("Сократите номер на \(delta) символа(ов)")
} else if countSymbolsPhoneNumber == 12 && phoneNumber.hasPrefix("+7") {
    print("Номер российский")
} else {
    print("Oops: Что-то пошло не так или номер не российский")
}
//: [Ранее: Задание 4](@previous)  |  задание 5 из 6  | [Далее: Задание 6](@next)
