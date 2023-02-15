//
//  QuizSelectPresenter.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/15.
//

import Foundation

class QuizSelectPresenter {
    private let plan = Plan()
}

extension QuizSelectPresenter: QuizSelectProtocol {
    func getPlan() {
        plan.getPlan()
    }
}
