//
//  HomePresenter.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/15.
//

import Foundation

final class HomePresenter {
    private let planRepository: PlanRepositoryProtocol
    
    init(planRepository: PlanRepositoryProtocol) {
        self.planRepository = planRepository
    }
}

extension HomePresenter: HomeProtocol {
    func planChange(_ planSwich: Bool) {
        self.planRepository.changePlan(planSwich)
    }
}
