//
//  InitialQuizWordsProtocol.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/17.
//

import Foundation
import RealmSwift

protocol InitialQuizWordsProtocol {
    func fetchValues() -> List<String>
}
