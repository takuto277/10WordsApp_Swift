//
//  QuizWordsRepository.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/17.
//

import Foundation

final class QuizWordsRepository {
    private let initialQuizWords: InitialQuizWordsProtocol
    private let userEditQuizWords: UserEditQuizWordsProtocol
    
    init(initialQuizWords: InitialQuizWordsProtocol,
         userEditQuizWords: UserEditQuizWordsProtocol) {
        self.initialQuizWords = initialQuizWords
        self.userEditQuizWords = userEditQuizWords
    }
    
    private func convertUserEditQuizWordModel(_ quizWordEntity: QuizWordEntity) -> UserEditQuizWordModel {
        let model = UserEditQuizWordModel()
        
        model.english = quizWordEntity.english
        model.japanese = quizWordEntity.japanese
        
        return model
    }
    
    private func convertQuizWordEntity(_ model: UserEditQuizWordModel) -> QuizWordEntity {
        return QuizWordEntity(
            key: model.id,
            english: model.english,
            japanese: model.japanese
        )
    }
}

extension QuizWordsRepository: QuizWordsRepositoryProtocol {
    
    func setUserEditQuizWord(_ quizWordEntity: QuizWordEntity) {
        let model = UserEditQuizWordModel.incrementId(
            self.convertUserEditQuizWordModel(quizWordEntity)
        )
        self.userEditQuizWords.setValue(model)
    }
    
    func setInitialQuizWord(_ initialWords: InitialWords) {
        
        var models = [InitialQuizWordModel()]
        
        for list in initialWords.data {
            let model = InitialQuizWordModel()
            model.id = list.ID
            model.english = list.english
            model.japanese = list.japanese
            models.append(model)
        }
        self.initialQuizWords.setValue(models)
        
//        models = initialWords.data.map { list in
//            let model = InitialQuizWordModel()
//            model.id = list.ID
//            model.english = list.english
//            model.japanese = list.japanese
//
//        }
    }
    
    func findByPlan(_ quizPlan: QuizPlan) -> [QuizWordEntity] {
        switch quizPlan {
        case .initial:
            return self.initialQuizWords.fetchValues()
        case .userEdit:
                //TODO:動作確認できてない
            return self.userEditQuizWords.fetchValues().map { list in
                self.convertQuizWordEntity(list)
            }
        }
    }
}
