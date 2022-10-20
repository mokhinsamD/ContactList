//
//  File.swift
//  ContactList
//
//  Created by Дарина Самохина on 19.10.2022.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func retunPerson() -> [Person] {
        let dataStore = DataStore()
        return [
        Person(
            name: dataStore.namesList[dataStore.getRandomIndex],
            surname: dataStore.surnamesList[dataStore.getRandomIndex],
            phone: dataStore.phonesList[dataStore.getRandomIndex],
            email: dataStore.emailsList[dataStore.getRandomIndex]
        ),
        Person(
            name: dataStore.namesList[dataStore.getRandomIndex],
            surname: dataStore.surnamesList[dataStore.getRandomIndex],
            phone: dataStore.phonesList[dataStore.getRandomIndex],
            email: dataStore.emailsList[dataStore.getRandomIndex]
        ),
        Person(
            name: dataStore.namesList[dataStore.getRandomIndex],
            surname: dataStore.surnamesList[dataStore.getRandomIndex],
            phone: dataStore.phonesList[dataStore.getRandomIndex],
            email: dataStore.emailsList[dataStore.getRandomIndex]
        ),
        Person(
            name: dataStore.namesList[dataStore.getRandomIndex],
            surname: dataStore.surnamesList[dataStore.getRandomIndex],
            phone: dataStore.phonesList[dataStore.getRandomIndex],
            email: dataStore.emailsList[dataStore.getRandomIndex]
        ),
        Person(
            name: dataStore.namesList[dataStore.getRandomIndex],
            surname: dataStore.surnamesList[dataStore.getRandomIndex],
            phone: dataStore.phonesList[dataStore.getRandomIndex],
            email: dataStore.emailsList[dataStore.getRandomIndex]
        ),
        Person(
            name: dataStore.namesList[dataStore.getRandomIndex],
            surname: dataStore.surnamesList[dataStore.getRandomIndex],
            phone: dataStore.phonesList[dataStore.getRandomIndex],
            email: dataStore.emailsList[dataStore.getRandomIndex]
        ),
        Person(
            name: dataStore.namesList[dataStore.getRandomIndex],
            surname: dataStore.surnamesList[dataStore.getRandomIndex],
            phone: dataStore.phonesList[dataStore.getRandomIndex],
            email: dataStore.emailsList[dataStore.getRandomIndex]
        ),
        Person(
            name: dataStore.namesList[dataStore.getRandomIndex],
            surname: dataStore.surnamesList[dataStore.getRandomIndex],
            phone: dataStore.phonesList[dataStore.getRandomIndex],
            email: dataStore.emailsList[dataStore.getRandomIndex]
        ),
        Person(
            name: dataStore.namesList[dataStore.getRandomIndex],
            surname: dataStore.surnamesList[dataStore.getRandomIndex],
            phone: dataStore.phonesList[dataStore.getRandomIndex],
            email: dataStore.emailsList[dataStore.getRandomIndex]
        ),
        Person(
            name: dataStore.namesList[dataStore.getRandomIndex],
            surname: dataStore.surnamesList[dataStore.getRandomIndex],
            phone: dataStore.phonesList[dataStore.getRandomIndex],
            email: dataStore.emailsList[dataStore.getRandomIndex]
        )
        ]
    }


}

class DataStore {
    let namesList = [
        "Teo",
        "Harry",
        "Draco",
        "Ron",
        "Pancy",
        "Rome",
        "Niel",
        "Andrew",
        "Damien",
        "Alice"
    ]
    
    let surnamesList = [
        "Potter",
        "Snape",
        "Malfoy",
        "Weasley",
        "Josten",
        "Myniard",
        "Parkinson",
        "Show",
        "Rival",
        "Bloom"
    ]
    
    let phonesList = [
        "12345678",
        "23456781",
        "34567812",
        "45678123",
        "56781234",
        "67812345",
        "78912345",
        "89123456",
        "91234567",
        "10234567"
    ]
    
    let emailsList = [
        "iiii@mail.com",
        "pppp@mail.com",
        "nnnn@mail.com",
        "yyyy@mail.com",
        "rrrr@mail.com",
        "bbbb@mail.com",
        "dddd@mail.com",
        "wwww@mail.com",
        "dddd@mail.com",
        "vvvv@mail.com"
    ]
    
//    func getRandomIndex(list: [String]) -> Int {
//        let randomNumber = Int.random(in: 0..<list.count)
//        var index = Int.random(in: 0..<list.count)
//        while randomNumber == index {
//            index = Int.random(in: 0..<list.count)
//        }
//        return index
//    }

    var getRandomIndex: Int {
        let randomNumber = Int.random(in: 0..<namesList.count)
        var index = Int.random(in: 0..<namesList.count)
        while randomNumber == index {
            index = Int.random(in: 0..<namesList.count)
        }
        return index
    }

}
