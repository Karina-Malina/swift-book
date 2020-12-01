import UIKit

//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLSeNUvNsLIHjKJluYyK7DvCuHRCbp7N4kYR9vDMw0ILdWeF1HQ/viewform)

//: # Home Work 7


 
/*:
 ## Задание 1
 1.1 Создайте класс `Shape` (родительский класс) со следующими свойствами:
 
 - `height: Float`
 
 - `width: Float`
 
 - `radius: Float`
 
 - `square: Float`
 
 - `perimeter: Float`
 
 Oбъявите в классе методы `squareOfShape` и `perimeterOfShape` для расчетов площади и периметра (длины) фигуры соответственно. Методы должены возвращать `Float`. Создайте инициализатор для сторон прямоугольника и отдельный инициализатор для радиуса.
 */
class Shape {
    let height: Float
    let width: Float
    let radius: Float
    var square: Float = 0
    var perimeter: Float = 0
    
    init(height: Float, width: Float, radius: Float, square: Float, perimeter: Float) {
        self.height = height
        self.width = width
        self.radius = radius
    }
    
    func squareOfShape() -> Float {
        return square
    }
    
    func perimeterOfShape() -> Float {
        return perimeter
    }
}
/*:
 1.2. Создайте классы `Circle`, `Rectangle` и `Ellipse`, унаследовав их от `Shape`. Переопределите методы `squareOfShape` и `perimeterOfShape` для каждого класса в соответствии с правилом расчета площади или периметра (длины) конкретной фигуры

 1.3 В каждом классе создайте метод `description`, который выводит на консоль сообщение следующего вида: «Площадь фигуры <тип фигуры> равна <... >, периметр (длина) равна <...>»
 */
class Circle: Shape {
    let pi: Float = 3.14
    
    override func squareOfShape() -> Float {
        square = pi * pow(radius, 2)
        return square
    }
    
    override func perimeterOfShape() -> Float {
        perimeter = 2 * pi * radius
        return perimeter
    }
}

class Rectangle: Shape {
    
    override func squareOfShape() -> Float {
        <#code#>
    }
    
    override func perimeterOfShape() -> Float {
        <#code#>
    }
}

class Ellipse: Shape {
    
    override func squareOfShape() -> Float {
        <#code#>
    }
    
    override func perimeterOfShape() -> Float {
        <#code#>
    }
}
//: 1.4 Создайте по экземпляру каждого класса, кроме `Shape`, проинициализируйте свойства `height` и `width` или `radius` для каждого класса в любые значения и вызовите у каждого экземпляра класса метод `description`
class View {
    var model: Model?
}

class Model {
    unowned var view: View
    init(view: View) {
        self.view = view
    }
}

let model = Model(view: View())
let view = model.view
/*:
## Задание 2

 2.1.
 
 Спроектировать проигрыватель(класс `AudioPlayer`), в него можно добавить одну или несколько композиций (метод `addCompositions(compositions: [AudioFile])`):
 - композиция (класс или структура `AudioFile`) имеет название, альбом, автора и длительность.
 
 Проигрыватель может:
 - перемешивать композиции(метод `shuffleCompositions()`)
 - выводить количество песен (свойство `numberOfCompositions`)
 - проигрывать следующую песню (метод `playNext()`), предыдущую (метод `playPrevious()`)
 - при проигрывании  песни выводить в консоль: "Играет композиция с именем <название>(<альбом>). Автор: <автор>",
 - если была  последняя композиция(песня), то при проигрывании следующей(`playNext()`) будет играться первая.
 - если песен нет, то при попытке проигрывания следующей песни или предыдущей выводить: "Композиции не найдены",
 
 2.2.
 
 К проигрывателю через USB может быть подключено одно из выходных устройств: Наушники(класс `Headphones`), Колонки(класс `Loudspeakers`).
 
 Колонки при начале проигрывания композиции в проигрывателе(если подключены) выводят в консоль "На колонках проигрывается неизвестный звук длительностью <длительность>"
 
 Наушники при начале проигрывания композиции в проигрывателе(если подключены) выводят в консоль "В наушниках проигрывается неизвестный звук длительностью <длительность>", где <длительность> - это длительность композиции.
 
 > Если интерфейс подключения один (USB), то может стоит подключать выходное устройство через протокол?
 
 2.3.
 Время послушать музыку! Для этого нужно последовательно выполнить действия:
 
 - Создать объект класса проигрыватель(`AudioPlayer`),
 - Добавить в него 3 любые песни `addCompositions`, пример песни: `AudioFile(title: "Anesthetize", album: "Fear of a Blank Planet", author: "Porcupine Tree", lengthSeconds: 1063)`
 - Проиграть 1 песню (и вспомнить, что выходное устройство не подключено :-))
 - Подключить к проигрывателю колонки `Loudspeakers`.
 - Перемешать песни (метод `shuffleCompositions()`)
 - Проиграть 5 песен через метод `playNext()`.
 - Вместо колонок подключить наушники `Headphones`
 - Проиграть 2 песни.

*/


