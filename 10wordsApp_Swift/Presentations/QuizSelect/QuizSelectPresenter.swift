//
//  QuizSelectPresenter.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/15.
//

import Foundation

final class QuizSelectPresenter {
    private let planRepository: PlanRepositoryProtocol
    
    init(planRepository: PlanRepositoryProtocol) {
        self.planRepository = planRepository
    }
}

extension QuizSelectPresenter: QuizSelectProtocol {
    func getPlan() {
        let plan = self.planRepository.getPlan()
    }
}
