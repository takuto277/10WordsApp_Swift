//
//  DaoModules.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/17.
//

import Foundation

struct DaoModules {
    let initialQuizWords: InitialQuizWordsProtocol
    let userEditQuizWords: UserEditQuizWordsProtocol
    
    static func inject() -> DaoModules {
        DaoModules(
            initialQuizWords: InitialQuizWords(),
            userEditQuizWords: UserEditQuizWords()
        )
    }
}
