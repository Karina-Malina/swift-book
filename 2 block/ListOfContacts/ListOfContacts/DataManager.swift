//
//  DataManager.swift
//  ListOfContacts
//
//  Created by Karina Blinova on 23.12.2020.
//

import Foundation

class DataManager {
    
    let nameArray = ["Freddy", "Jason", "Peter", "John", "Jack", "Michael", "Hannibal", "Albert", "Alessa", "Vlad"]
    let surnameArray = ["Krueger", "Voorhees", "Weiland", "Kramer", "Torrance", "Myers", "Lecter", "Wesker", "Gillespie", "Dracula"]
    let phoneArray = ["64037452846", "16473047353", "183745403756", "84746352085", "74536494624", "757364956352", "48564523208", "84624394657", "81530475003", "66373778474"]
    let mailArray = ["alien@mail.ru", "shining@mail.ru", "saw@mail.ru", "friday13@mail.ru", "silenceOfTheLambs@mail.ru", "halloween@mail.ru", "nightmareOnElmStreet@mail.ru", "residentEvil@mail.ru", "silentHill@mail.ru", "dracula@mail.ru"]
    
    var randomPersons: [Person] {
        var personCollection = [Person]()
        for _ in 1...10 {
            let randomName = nameArray.randomElement()
            let randomSurname = surnameArray.randomElement()
            let randomPhone = phoneArray.randomElement()
            let randomMail = mailArray.randomElement()
            personCollection.append(Person(name: randomName!, surname: randomSurname!, phone: randomPhone!, mail: randomMail!))
        }
        return personCollection
    }
}
