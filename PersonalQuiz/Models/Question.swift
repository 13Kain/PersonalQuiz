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
    
    func getQuestion() -> [Question] {
        [
            Question(title: "Какую пищу вы предпочитаете?",
                     responseType: .single,
                     answers: [
                        Answer(title: "Стейк", animal: .dog),
                        Answer(title: "Рыба", animal: .cat),
                        Answer(title: "Морковь", animal: .rabbit),
                        Answer(title: "Кукуруза", animal: .pig),
                     ]
                    ),
            Question(title: "Что Вам нравится больше?",
                     responseType: .multiply,
                     answers: [
                        Answer(title: "Плавать", animal: .dog),
                        Answer(title: "Спать", animal: .cat),
                        Answer(title: "Обнимать", animal: .rabbit),
                        Answer(title: "Есть", animal: .pig),
                     ]
                    ),
            Question(title: "Любите ли поездки на машине?",
                     responseType: .ranged,
                     answers: [
                        Answer(title: "Ненавижу", animal: .cat),
                        Answer(title: "Нервничаю", animal: .rabbit),
                        Answer(title: "Незамечаю", animal: .pig),
                        Answer(title: "Обожаю", animal: .dog),
                     ]
                    )
        ]
    }
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

