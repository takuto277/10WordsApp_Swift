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
    
    init(planRepository: PlanRepositoryProtocol) {
        self.planRepository = planRepository
    }
}

extension HomePresenter: HomeProtocol {
    
    func attachView(view: HomeViewProtocol) {
        self.view = view
    }
    
    func planChange(_ isInitial: Bool) {
        self.planRepository.initial(isInitial)
    }
}
