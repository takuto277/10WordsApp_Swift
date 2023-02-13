//
//  HomeViewController.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/14.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBAction func quizStartButton(_ sender: Any){
        //TODO: ViewControllerFactoryにて実装予定
        let quizSelectViewController = QuizSelectViewController()
        quizSelectViewController.modalPresentationStyle = .fullScreen
        self.present(quizSelectViewController, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
