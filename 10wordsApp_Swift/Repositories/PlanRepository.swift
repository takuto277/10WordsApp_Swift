//
//  PlanRepository.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/16.
//

import Foundation

final class PlanRepository {
    private let planSource: PlanSourceProtocol
    
    init(planSource: PlanSourceProtocol) {
        self.planSource = planSource
    }
}

extension PlanRepository: PlanRepositoryProtocol {
    func initial(_ isInitial: Bool) {
        self.planSource.setValue(isInitial ? .initial : .userEdit)
    }
    
    func isInitial() -> Bool {
        return self.planSource.value() == .initial
    }
}
