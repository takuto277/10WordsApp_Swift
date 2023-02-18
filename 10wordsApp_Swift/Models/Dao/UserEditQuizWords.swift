//
//  UserEditWords.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/17.
//

import Foundation
import RealmSwift

class UserEditQuizWords: UserEditQuizWordsProtocol {
    
    func setValue(_ model: UserEditQuizWordModel) {
        let realm = RealmManager.shared.realm
        do {
            try realm.write {
                realm.add(model)
            }
        } catch {
            print("error")
        }
    }
    
    //TODO: Realmからリスト型を呼び出す予定
    func fetchValues() -> [QuizWordEntity] {
        let list = List<String>()
        let array = ["a","b","c","d","e","f","g","h"]
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
