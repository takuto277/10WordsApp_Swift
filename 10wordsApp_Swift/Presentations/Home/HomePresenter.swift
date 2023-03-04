//
//  HomePresenter.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/15.
//

import Foundation

final class HomePresenter {
    private weak var view: HomeViewProtocol?
    private let planRepository: PlanRepositoryProtocol
    private let quizWordsRepository: QuizWordsRepositoryProtocol
    private let apiRepository: APIRepositoryProtocol
    
    init(planRepository: PlanRepositoryProtocol,
         quizWordsRepository: QuizWordsRepositoryProtocol,
         apiRepository: APIRepositoryProtocol) {
        self.planRepository = planRepository
        self.quizWordsRepository = quizWordsRepository
        self.apiRepository = apiRepository
    }
}

extension HomePresenter: HomeProtocol {
    
    func attachView(view: HomeViewProtocol) {
        self.view = view
    }
    
    func planChange(_ isInitial: Bool) {
        self.planRepository.initial(isInitial)
    }
    
    func fetchInitialQuiz() {
        // TODO: 強制アンラップは後ほど修正
        self.apiRepository.initialWord() { word in
            self.quizWordsRepository.setInitialQuizWord(word!)
        }
        }
    }
