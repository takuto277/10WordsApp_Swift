//
//  QuizSelectProtocol.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/15.
//

import Foundation

protocol QuizSelectProtocol: AnyObject {
    func attachView(_ view: QuizSelectViewProtocol)
    func fetchPlan()
    func fetchQuizWords(_ quizPlan: QuizPlan)
}

protocol QuizSelectViewProtocol: AnyObject {
    func didFetchPlan(_ quizPlan: QuizPlan)
    func didFetchQuizWords(_ quizWords: [QuizWordEntity])
}
