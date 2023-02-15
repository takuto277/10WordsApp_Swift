//
//  HomeViewController.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/14.
//

import UIKit

class HomeViewController: UIViewController {
    private let presenter: HomeProtocol
    @IBOutlet weak var planSwitch: UISwitch!
    
    init(presenter: HomeProtocol) {
        self.presenter = presenter
        super.init(nibName: String(describing: HomeViewController.self), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func planSwitchButton(_ sender: Any) {
        self.presenter.planChange(planSwitch.isOn)
    }
    
    @IBAction func quizStartButton(_ sender: Any){
        self.present(ViewControllerFactory.createQuizSelectViewController(), animated: true)
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
