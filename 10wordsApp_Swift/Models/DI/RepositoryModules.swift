//
//  RepositoryModules.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/17.
//

import Foundation

struct RepositoryModules {
    let planRepository: PlanRepositoryProtocol
    let quizWordsRepository: QuizWordsRepositoryProtocol
    
    static func inject(_ planSourceModules: PlanSourceModules, _ daoModules: DaoModules) -> RepositoryModules {
        RepositoryModules(
            planRepository: PlanRepository(
                planSource: planSourceModules.planSource
            ),
            quizWordsRepository: QuizWordsRepository(
                initialQuizWords: daoModules.initialQuizWords,
                userEditQuizWords: daoModules.userEditQuizWords
            )
        )
    }
}
