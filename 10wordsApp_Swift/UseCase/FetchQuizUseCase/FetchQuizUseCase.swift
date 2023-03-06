//
//  FetchQuizUseCase.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/03/07.
//

import Foundation

class FetchQuizUseCase {
    private let planRepository: PlanRepositoryProtocol
    private let quizWordsRepository: QuizWordsRepositoryProtocol
    
    init(planRepository: PlanRepositoryProtocol,
         quizWordsRepository: QuizWordsRepositoryProtocol) {
        self.planRepository = planRepository
        self.quizWordsRepository = quizWordsRepository
    }
}

extension FetchQuizUseCase: FetchQuizUseCaseProtocol {
    func execute() -> [QuizWordEntity] {
        return self.quizWordsRepository.findByPlan(self.planRepository.fetch())
    }
}
