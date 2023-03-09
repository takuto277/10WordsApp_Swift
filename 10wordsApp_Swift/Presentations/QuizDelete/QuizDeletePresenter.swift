//
//  QuizDeletePresenter.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/03/09.
//

import Foundation

final class QuizDeletePresenter {
    private let fetchQuizUseCase: FetchQuizUseCaseProtocol
    
    init(fetchQuizUseCase: FetchQuizUseCaseProtocol) {
        self.fetchQuizUseCase = fetchQuizUseCase
    }
}

extension QuizDeletePresenter: QuizDelteProtocol {
    func fetchQuizWords() -> [QuizWordEntity] {
        self.fetchQuizUseCase.execute()
    }
}
