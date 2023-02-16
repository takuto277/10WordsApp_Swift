//
//  Plan.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/15.
//

import Foundation

//TODO: 継承しないファイルはfinalをつける
//TODO: Repositoryを介して使う

//TODO: 命名の改善
class Plan {
    
    static var quizPlan = QuizPlan.initial
    
    func change(_ planSwitch: Bool) {
        Plan.quizPlan = planSwitch ? QuizPlan.initial : QuizPlan.userEdit
    }
    
    func get() -> QuizPlan {
        return Plan.quizPlan
    }
}
