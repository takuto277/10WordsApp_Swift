//
//  PlanSource.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/15.
//

import Foundation

class PlanSource: PlanSourceProtocol {
    
    private var quizPlan = QuizPlan.initial
    
    func setValue(_ value: QuizPlan) {
        self.quizPlan = value
    }
    
    func value() -> QuizPlan {
        return self.quizPlan
    }
}
