//
//  UserEditWords.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/17.
//

import Foundation
import RealmSwift

class UserEditQuizWords: UserEditQuizWordsProtocol {
    //TODO: 返り値はテストである(要修正)
    //TODO: Realmからリスト型を呼び出す予定
    func fetchValues() -> List<String> {
        var list = List<String>()
        var array = ["a","b","c","d","e","f","g","h"]
        array.forEach { figure in
            list.append(figure)
        }
        
        return list
        
    }
}
