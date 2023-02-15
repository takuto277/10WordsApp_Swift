//
//  Plan.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/15.
//

import Foundation

enum QuizPlan {
    case initialQuiz
    case userEditQuiz
}


class Plan {
    
    static var quizPlan = QuizPlan.initialQuiz
    
    func change(_ planSwitch: Bool) {
        Plan.quizPlan = planSwitch ? QuizPlan.initialQuiz : QuizPlan.userEditQuiz
    }
    
    func getPlan() {
        switch Plan.quizPlan {
        case .initialQuiz:
            print("initialQuizのリストを取得")
            
        case .userEditQuiz:
            print("userEditQuizのリストを取得")
        }
    }
}
