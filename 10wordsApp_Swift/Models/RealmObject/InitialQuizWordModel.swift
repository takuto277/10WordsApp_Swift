//
//  InitialQuizWordModel.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/03/05.
//

import Foundation
import RealmSwift

class InitialQuizWordModel: Object {
    @objc dynamic var id = 0
    @objc dynamic var english: String = ""
    @objc dynamic var japanese: String = ""
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
