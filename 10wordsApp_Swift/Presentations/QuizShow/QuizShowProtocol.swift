//
//  QuizShowProtocol.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/15.
//

import Foundation

protocol QuizShowProtocol {
    func attachView(_ view: QuizShowViewProtocol)
    func fetchPlan()
    func fetchQuizWords(_ quizPlan: QuizPlan)
}

protocol QuizShowViewProtocol: AnyObject {
    func didFetchPlan(_ quizPlan: QuizPlan)
    func didFetchQuizWords(_ quizWords: [QuizWordEntity])
}

