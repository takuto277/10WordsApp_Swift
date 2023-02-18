//
//  QuizAddPresenter.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/15.
//

import Foundation

final class QuizAddPresenter {
    private let quizWordsRepository: QuizWordsRepositoryProtocol
    
    init(quizWordsRepository: QuizWordsRepositoryProtocol) {
        self.quizWordsRepository = quizWordsRepository
    }
}

extension QuizAddPresenter: QuizAddProtocol {
    func saveQuizWord(_ quizWordEntity: QuizWordEntity) {
        self.quizWordsRepository.setUserEditQuizWord(quizWordEntity)
    }
}
