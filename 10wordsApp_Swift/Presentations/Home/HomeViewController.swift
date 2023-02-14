//
//  HomeViewController.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/14.
//

import UIKit

class HomeViewController: UIViewController {
    
    init() {
        super.init(nibName: "HomeViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func quizStartButton(_ sender: Any){
        //TODO: ViewControllerFactoryにて実装予定
        let quizSelectViewController = QuizSelectViewController()
        quizSelectViewController.modalPresentationStyle = .fullScreen
        self.present(quizSelectViewController, animated: true)
    }
    
    @IBAction func quizAddButton(_ sender: Any){
        let quizAddViewController = QuizAddViewController()
        quizAddViewController.modalPresentationStyle = .fullScreen
        self.present(quizAddViewController, animated: true)
    }
    
    @IBAction func quizDeleteButton(_ sender: Any){
        
    }
    
    @IBAction func quizListButton(_ sender: Any){
        
    }
    
    @IBAction func getInitialQuizButton(_ sender: Any){
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
