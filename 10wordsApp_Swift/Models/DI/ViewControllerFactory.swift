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
        let presenter = HomePresenter(
            planRepository: SingletonContainer.shard.repositoryModeles.planRepository,
            quizWordsRepository: SingletonContainer.shard.repositoryModeles.quizWordsRepository,
            apiRepository: SingletonContainer.shard.repositoryModeles.apiRepository
        )
        let vc = HomeViewController(presenter: presenter)
        vc.modalPresentationStyle = .fullScreen
        return vc
    }
    
    static func createQuizSelectViewController() -> UIViewController {
        let presenter = QuizSelectPresenter(
            planRepository: SingletonContainer.shard.repositoryModeles.planRepository,
            quizWordsRepository: SingletonContainer.shard.repositoryModeles.quizWordsRepository
        )
        let vc = QuizSelectViewController(presenter: presenter)
        vc.modalPresentationStyle = .fullScreen
        return vc
    }
    
    static func createQuizShowViewController() -> UIViewController {
        let presenter = QuizShowPresenter(
            planRepository: SingletonContainer.shard.repositoryModeles.planRepository,
            quizWordsRepository: SingletonContainer.shard.repositoryModeles.quizWordsRepository
        )
        let vc = QuizShowViewController(presenter: presenter)
        vc.modalPresentationStyle = .fullScreen
        return vc
    }
    
    static func createQuizAddViewController() -> UIViewController {
        let presenter = QuizAddPresenter(
            quizWordsRepository: SingletonContainer.shard.repositoryModeles.quizWordsRepository)
        let vc = QuizAddViewController(presenter: presenter)
        vc.modalPresentationStyle = .fullScreen
        return vc
    }
    
    static func createQuizDeleteViewController() -> UIViewController {
        let presenter = QuizDeletePresenter(fetchQuizUseCase: SingletonContainer.shard.useCaseModules.fetchQuizUseCase)
        let vc = QuizDeleteViewController(presenter: presenter)
        vc.modalPresentationStyle = .fullScreen
        return vc
    }
    
    static func creatQuizListViewController() -> UIViewController {
        let presenter = QuizListPresenter(fetchQuizUseCase: SingletonContainer.shard.useCaseModules.fetchQuizUseCase)
        let vc = QuizListViewController(presenter: presenter)
        vc.modalPresentationStyle = .fullScreen
        return vc
    }
}
