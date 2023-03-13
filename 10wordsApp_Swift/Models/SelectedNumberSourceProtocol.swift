//
//  SelectedNumberSourceProtocol.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/03/14.
//

import Foundation

protocol SelectedNumberSourceProtocol {
    func setValue(_ value: Int)
    func value() -> Int
}
