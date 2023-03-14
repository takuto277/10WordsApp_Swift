//
//  QuizSelectPresenter.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/15.
//

import Foundation

final class QuizSelectPresenter {
    private weak var view: QuizSelectViewProtocol?
    private let planRepository: PlanRepositoryProtocol
    private let quizWordsRepository: QuizWordsRepositoryProtocol
    private let selectedNumberRepository: SelectedNumberRepositoryProtocol
    private let fetchQuizUseCase: FetchQuizUseCaseProtocol
    
    init(planRepository: PlanRepositoryProtocol,
         quizWordsRepository: QuizWordsRepositoryProtocol,
         selectedNumberRepository: SelectedNumberRepositoryProtocol,
         fetchQuizUseCase: FetchQuizUseCaseProtocol) {
        self.planRepository = planRepository
        self.quizWordsRepository = quizWordsRepository
        self.selectedNumberRepository = selectedNumberRepository
        self.fetchQuizUseCase = fetchQuizUseCase
    }
}

extension QuizSelectPresenter: QuizSelectProtocol {
    func attachView(_ view: QuizSelectViewProtocol) {
        self.view = view
    }

    func fetchQuizWords() -> [QuizWordEntity] {
        self.fetchQuizUseCase.execute()
    }
    
    func selectedNumberChange(_ row: Int) {
        self.selectedNumberRepository.set(row)
    }
}
