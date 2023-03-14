//
//  SelectedNumberRepositoryProtocol.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/03/14.
//

import Foundation

protocol SelectedNumberRepositoryProtocol {
    func set(_ row: Int)
    func fetch() -> Int
}
