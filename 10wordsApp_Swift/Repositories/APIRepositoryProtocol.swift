//
//  APIRepositoryProtocol.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/03/05.
//

import Foundation

protocol APIRepositoryProtocol {
    func initialWord(completion: @escaping (InitialWords?) -> Void)
}
