//
//  QuizListPresenter.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/03/10.
//

import Foundation

final class QuizListPresenter {
    private let fetchQuizUseCase: FetchQuizUseCaseProtocol
    
    init(fetchQuizUseCase: FetchQuizUseCaseProtocol) {
        self.fetchQuizUseCase = fetchQuizUseCase
    }
}

extension QuizListPresenter: QuizListProtocol {
    func fetchQuizWords() -> [QuizWordEntity] {
        self.fetchQuizUseCase.execute()
    }
}
