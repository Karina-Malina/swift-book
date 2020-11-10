import UIKit

//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLSccthwi9BKLxJgJRHOO6NdM_cC5QoHGAR4pVf05mnr8N2ssJQ/viewform)

//: ## Home work 3

/*:
 ### Задание 1
 1.1 Представьте, что вы владелец розничного магазина и вам необходимо закупить товар, стоимость которого варьируется от его количества. Если количество закупаемого товара меньше 10 позиций, то цена равна 1000 рублей за штуку. От 10 до 20 единиц товара будет стоить вам 800 рублей за штуку. И вы заплатите 600 рублей за единцу при единовременно покупке от 20 единиц. Создайте условие для расчета цены за еденицу товара в зависмости от его количества и подсичитайте общую сумму используя конструкцию `if-else`. Постарайтесь написать короткое и читаемое решение
 */

let countOfProduct = 100
var priceForOneProduct = 1000.0

if 10..<20 ~= countOfProduct {
    priceForOneProduct = 800
} else if countOfProduct >= 20 {
    priceForOneProduct = 600
}

let commonPrice = Double(countOfProduct) * priceForOneProduct
//: |  задание 1 из 6  |  [Далее: Задание 2](@next)
