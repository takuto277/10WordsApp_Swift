//
//  PlanRepositoryProtocol.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/16.
//

import Foundation

protocol PlanRepositoryProtocol {
    func initial(_ isInitial: Bool)
    func fetch() -> QuizPlan
}
