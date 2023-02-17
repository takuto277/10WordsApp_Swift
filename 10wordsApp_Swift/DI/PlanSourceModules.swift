//
//  PlanSourceModules.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/17.
//

import Foundation

struct PlanSourceModules {
    let planSource: PlanSourceProtocol
    
    static func inject() -> PlanSourceModules {
        PlanSourceModules(
            planSource: PlanSource()
        )
    }
}
