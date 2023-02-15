//
//  ViewControllerFactory.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/15.
//

import Foundation
import UIKit

struct ViewControllerFactory {
    static func createHomeViewController() -> UIViewController {
        let presenter = HomePresenter()
        let vc = HomeViewController(presenter: presenter)
        vc.modalPresentationStyle = .fullScreen
        return vc
    }
    
    static func createQuizSelectViewController() -> UIViewController {
        let presenter = QuizSelectPresenter()
        let vc = QuizSelectViewController(presenter: presenter)
        vc.modalPresentationStyle = .fullScreen
        return vc
    }
}
