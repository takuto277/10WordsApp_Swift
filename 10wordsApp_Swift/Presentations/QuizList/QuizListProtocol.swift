//
//  QuizListProtocol.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/03/10.
//

import Foundation

protocol QuizListProtocol {
    func fetchQuizWords() -> [QuizWordEntity]
}
