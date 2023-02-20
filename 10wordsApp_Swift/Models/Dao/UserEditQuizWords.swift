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
    func fetchValues() -> Results<UserEditQuizWordModel> {
        let realm = RealmManager.shared.realm
        return realm.objects(UserEditQuizWordModel.self)
    }
}
