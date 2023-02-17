//
//  UserEditWords.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/17.
//

import Foundation
import RealmSwift

class UserEditQuizWords: UserEditQuizWordsProtocol {
    //TODO: Realmからリスト型を呼び出す予定
    func fetchValues() -> [QuizWordEntity] {
        var list = List<String>()
        var array = ["a","b","c","d","e","f","g","h"]
        array.forEach { figure in
            list.append(figure)
        }
        
        let quizWordEntity: [QuizWordEntity] = list.map({ list in
            QuizWordEntity(english: list,
                           japanese: list)
        })
        
        return quizWordEntity
        
    }
}
