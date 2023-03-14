//
//  SingletonContainer.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/17.
//

import Foundation

final class SingletonContainer {
    let planSourceModules: PlanSourceModules
    let selectedNumberSourceModules: SelectedNumberSourceModules
    let daoModules: DaoModules
    let repositoryModeles: RepositoryModules
    let useCaseModules: UseCaseModules
    
    init() {
        self.planSourceModules = PlanSourceModules.inject()
        self.selectedNumberSourceModules = SelectedNumberSourceModules.inject()
        self.daoModules = DaoModules.inject()
        self.repositoryModeles = RepositoryModules.inject(self.planSourceModules,
                                                          self.selectedNumberSourceModules,
                                                          self.daoModules)
        self.useCaseModules = UseCaseModules.inject(self.repositoryModeles)
    }
    
    static let shard = SingletonContainer()
}
