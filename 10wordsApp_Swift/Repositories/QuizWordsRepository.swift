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
}

extension QuizWordsRepository: QuizWordsRepositoryProtocol {
    
    func setUserEditQuizWord(_ quizWordEntity: QuizWordEntity) {
        let model = UserEditQuizWordModel.incrementId(
            ObjectConverter.convertUserEditQuizWordModel(quizWordEntity)
        )
        self.userEditQuizWords.setValue(model)
    }
    
    func findByPlan(_ quizPlan: QuizPlan) -> [QuizWordEntity] {
        switch quizPlan {
        case .initial:
            return self.initialQuizWords.fetchValues()
        case .userEdit:
            return self.userEditQuizWords.fetchValues()
        }
    }
}
