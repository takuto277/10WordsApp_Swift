//
//  UseCaseModules.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/03/09.
//

import Foundation

struct UseCaseModules {
    let fetchQuizUseCase: FetchQuizUseCaseProtocol

    static func inject(_ repositoryModules: RepositoryModules) -> UseCaseModules {
        UseCaseModules(
            fetchQuizUseCase: FetchQuizUseCase(planRepository: repositoryModules.planRepository,
                                               quizWordsRepository: repositoryModules.quizWordsRepository)
        )
    }
}
