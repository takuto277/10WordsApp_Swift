//
//  PlanRepository.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/16.
//

import Foundation

class PlanRepository {
    private let planSource = PlanSource()
}

extension PlanRepository: PlanRepositoryProtocol {
    func initial(_ isInitial: Bool) {
        self.planSource.setValue(isInitial ? .initial : .userEdit)
    }
    
    func isInitial() -> Bool {
        return self.planSource.value() == .initial
    }
}
