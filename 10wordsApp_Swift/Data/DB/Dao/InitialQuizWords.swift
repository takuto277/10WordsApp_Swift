//
//  InitialQuizWords.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/17.
//

import Foundation
import RealmSwift

class InitialQuizWords: InitialQuizWordsProtocol {
    private let realm: Realm
    
    init(realm: Realm) {
        self.realm = realm
    }
    
    func setValue(_ models: [InitialQuizWordModel]) {
        do {
            let initialwordsList = List<InitialQuizWordModel>()
            
            for model in models {
                initialwordsList.append(model)
            }
            
            try realm.write {
                realm.add(initialwordsList)
            }
        } catch {
            print("初期データ保存失敗")
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
