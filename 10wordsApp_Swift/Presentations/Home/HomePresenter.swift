//
//  HomePresenter.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/15.
//

import Foundation
private let plan = Plan()

class HomePresenter {
    
}

extension HomePresenter: HomeProtocol {
    func planChange(_ planSwich: Bool) {
        plan.change(planSwich)
    }
}
