//
//  ObjectConverter.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/19.
//

import Foundation

class ObjectConverter {
    static func convertUserEditQuizWordModel(_ quizWordEntity: QuizWordEntity) -> UserEditQuizWordModel {
        let model = UserEditQuizWordModel()
        
        model.english = quizWordEntity.english
        model.japanese = quizWordEntity.japanese
        
        return model
    }
    
    static func convertQuizWordEntity(_ model: UserEditQuizWordModel) -> QuizWordEntity {
        return QuizWordEntity(
            key: model.id,
            english: model.english,
            japanese: model.japanese
        )
    }
}
