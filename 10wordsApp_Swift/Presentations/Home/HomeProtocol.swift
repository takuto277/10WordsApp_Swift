//
//  HomeProtocol.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/15.
//

import Foundation

protocol HomeProtocol: AnyObject {
    func attachView(view: HomeViewProtocol)
    func planChange(_ planSwich: Bool)
}

protocol HomeViewProtocol: AnyObject {
}
