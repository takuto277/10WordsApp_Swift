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
                realm.add(initialwordsList, update:  .modified)
            }
            print("初期データ保存成功")
        } catch {
            print("初期データ保存失敗")
        }
    }
    
    //TODO: Realmからリスト型を呼び出す予定
    func fetchValues() -> Results<InitialQuizWordModel> {
        return realm.objects(InitialQuizWordModel.self)
    }
}
