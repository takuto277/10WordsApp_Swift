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
    func findByIndexWithPlan() -> [String] {
        
        return [""]
    }
}
