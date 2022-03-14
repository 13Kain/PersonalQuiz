//
//  Question.swift
//  PersonalQuiz
//
//  Created by Никита on 14.03.2022.
//

import Foundation

struct Question {
    let title: String
    let responseType: ResponseType
    let answers: [Answer]
}

enum ResponseType {
    case single
    case multiply
    case ranged
}

struct Answer {
    let title: String
    let animal: Animal
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case pig = "🐷"
    case rabbit = "🐰"
    
    var definition: String {
        switch self {
            
        case .dog:
            return "Вам нравится быть с друзьями"
        case .cat:
            return "Вы себе на уме"
        case .pig:
            return "Вы любите валяться в грязи"
        case .rabbit:
            return "Вы любите мягкое"
        }
    }
}

