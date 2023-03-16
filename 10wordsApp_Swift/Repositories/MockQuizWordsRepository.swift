//
//  MockQuizWordsRepository.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/03/17.
//

import Foundation

class MockQuizWordsRepository: QuizWordsRepositoryProtocol {
    var mockFunctionCalled = false
    func setUserEditQuizWord(_ quizWordEntity: QuizWordEntity) {
        mockFunctionCalled = true
    }

    func setInitialQuizWord(_ initialWords: InitialWords) {
        
    }

    func findByPlan(_ quizPlan: QuizPlan) -> [QuizWordEntity] {
        return [QuizWordEntity(english: "Hello", japanese: "こんにちは")]
    }
}
