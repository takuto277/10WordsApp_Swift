//
//  PlanRepository.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/16.
//

import Foundation

class PlanRepository {
    private let plan = Plan()
}

extension PlanRepository: PlanRepositoryProtocol {
    func changePlan(_ planSwitch: Bool) {
        self.plan.change(planSwitch)
    }
    
    func getPlan() -> QuizPlan {
        return self.plan.get()
    }
}
