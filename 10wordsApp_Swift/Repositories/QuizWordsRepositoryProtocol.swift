//
//  QuizWordsRepositoryProtocol.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/17.
//

import Foundation

protocol QuizWordsRepositoryProtocol {
    func setUserEditQuizWord(_ quizWordEntity: QuizWordEntity)
    func setInitialQuizWord(_ initialWords: InitialWords)
    func findByPlan(_ quizPlan: QuizPlan) -> [QuizWordEntity]
}
