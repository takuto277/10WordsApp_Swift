//
//  QuizDeleteProtocol.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/03/09.
//

import Foundation

protocol QuizDelteProtocol {
    func fetchQuizWords() -> [QuizWordEntity]
}
