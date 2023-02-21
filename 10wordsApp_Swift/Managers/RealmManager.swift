//
//  RealmManager.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/19.
//

import Foundation
import RealmSwift

//TODO: Managerを使わない命名の見直し
class RealmManager: RealmProtocol {
    let realm: Realm
    
    init() {
        self.realm = try! Realm()
    }
}
