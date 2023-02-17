//
//  RepositoryModules.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/17.
//

import Foundation

struct RepositoryModules {
    let planRepository: PlanRepositoryProtocol
    
    static func inject(_ planSourceModules: PlanSourceModules) -> RepositoryModules {
        RepositoryModules(
            planRepository: PlanRepository(
                planSource: planSourceModules.planSource
            )
        )
    }
}
