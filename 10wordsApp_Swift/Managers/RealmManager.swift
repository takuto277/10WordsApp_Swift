//
//  RealmManager.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/19.
//

import Foundation
import RealmSwift

class RealmManager {
    static let shared = RealmManager()
    let realm: Realm
    
    private init() {
        self.realm = try! Realm()
    }
}
