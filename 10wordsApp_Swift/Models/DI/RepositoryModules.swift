//
//  RepositoryModules.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/17.
//

import Foundation

struct RepositoryModules {
    let planRepository: PlanRepositoryProtocol
    let selectedNumberRepository: SelectedNumberRepositoryProtocol
    let quizWordsRepository: QuizWordsRepositoryProtocol
    let apiRepository: APIRepositoryProtocol
    
    static func inject(_ planSourceModules: PlanSourceModules, _ selectedNumberModules: SelectedNumberSourceModules, _ daoModules: DaoModules) -> RepositoryModules {
        RepositoryModules(
            planRepository: PlanRepository(
                planSource: planSourceModules.planSource
            ),
            selectedNumberRepository: SelectedNumberRepository(
                selectedNumberSource: selectedNumberModules.selectedNumberSource
            ),
            quizWordsRepository: QuizWordsRepository(
                initialQuizWords: daoModules.initialQuizWords,
                userEditQuizWords: daoModules.userEditQuizWords
            ),
            apiRepository: APIRepository()
        )
    }
}
