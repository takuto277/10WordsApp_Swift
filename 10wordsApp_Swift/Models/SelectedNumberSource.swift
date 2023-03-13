//
//  SelectedNumberSource.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/03/14.
//

import Foundation

class SelectedNumberSource: SelectedNumberSourceProtocol {
    
    private var selectedNumber = 0
    
    func setValue(_ value: Int) {
        self.selectedNumber = value
    }
    
    func value() -> Int {
        return self.selectedNumber
    }
}
