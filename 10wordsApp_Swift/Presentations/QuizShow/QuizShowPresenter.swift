//
//  QuizShowPresenter.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/15.
//

import Foundation

final class QuizShowPresenter {
    private weak var view: QuizShowViewProtocol?
    private let planRepository: PlanRepositoryProtocol
    private let quizWordsRepository: QuizWordsRepositoryProtocol
    
    init(planRepository: PlanRepositoryProtocol,
         quizWordsRepository: QuizWordsRepositoryProtocol) {
        self.planRepository = planRepository
        self.quizWordsRepository = quizWordsRepository
    }
}

extension QuizShowPresenter: QuizShowProtocol {
    func attachView(_ view: QuizShowViewProtocol) {
        self.view = view
    }
    
    func fetchPlan() {
        let plan = self.planRepository.fetch()
        self.view?.didFetchPlan(plan)
    }
    
    func fetchQuizWords(_ quizPlan: QuizPlan) {
        let quizWords = self.quizWordsRepository.findByPlan(quizPlan)
        self.view?.didFetchQuizWords(quizWords)
    }
}
