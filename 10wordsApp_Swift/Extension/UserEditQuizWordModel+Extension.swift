//
//  UserEditQuizWordModel.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/19.
//

import Foundation
import RealmSwift

extension UserEditQuizWordModel {
    static func incrementId(_ model: UserEditQuizWordModel) -> UserEditQuizWordModel {
        let realm = RealmManager.shared.realm
        model.id = (realm.objects(UserEditQuizWordModel.self).max(ofProperty: "id") as Int? ?? 0) + 1
        return model
    }
}
