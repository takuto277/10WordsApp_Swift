//
//  SelectedNumberRepository.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/03/14.
//

import Foundation

final class SelectedNumberRepository {
    private let selectedNumberSource: SelectedNumberSourceProtocol
    
    init(selectedNumberSource: SelectedNumberSourceProtocol) {
        self.selectedNumberSource = selectedNumberSource
    }
}

extension SelectedNumberRepository: SelectedNumberRepositoryProtocol {
    func set(_ row: Int) {
        self.selectedNumberSource.setValue(row)
    }
    
    func fetch() -> Int {
        return self.selectedNumberSource.value()
    }
    
    
}
