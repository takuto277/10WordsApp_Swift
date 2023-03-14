//
//  SelectedNumberSourceModules.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/03/14.
//

import Foundation

struct SelectedNumberSourceModules {
    let selectedNumberSource: SelectedNumberSourceProtocol
    
    static func inject() -> SelectedNumberSourceModules {
        SelectedNumberSourceModules(
            selectedNumberSource: SelectedNumberSource()
        )
    }
}
