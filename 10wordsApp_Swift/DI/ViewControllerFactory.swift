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
        let presenter = HomePresenter(planRepository: PlanRepository())
        let vc = HomeViewController(presenter: presenter)
        vc.modalPresentationStyle = .fullScreen
        return vc
    }
    
    static func createQuizSelectViewController() -> UIViewController {
        let presenter = QuizSelectPresenter(planRepository: PlanRepository())
        let vc = QuizSelectViewController(presenter: presenter)
        vc.modalPresentationStyle = .fullScreen
        return vc
    }
    
    static func createQuizShowViewController() -> UIViewController {
        let presenter = QuizShowPresenter()
        let vc = QuizShowViewController(presenter: presenter)
        vc.modalPresentationStyle = .fullScreen
        return vc
    }
    
    static func createQuizAddViewController() -> UIViewController {
        let presenter = QuizAddPresenter()
        let vc = QuizAddViewController(presenter: presenter)
        vc.modalPresentationStyle = .fullScreen
        return vc
    }
}