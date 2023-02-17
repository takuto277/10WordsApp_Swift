//
//  PlanSourceProtocol.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/17.
//

import Foundation

protocol PlanSourceProtocol {
    func setValue(_ value: QuizPlan)
    func value() -> QuizPlan
}
