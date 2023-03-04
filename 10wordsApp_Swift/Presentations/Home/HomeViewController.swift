//
//  HomeViewController.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/14.
//

import UIKit
// TODO: ここでMoyaは呼ばない、後ほど修正
import Moya

final class HomeViewController: UIViewController {
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
        print("hoge")
        self.presenter.planChange(planSwitch.isOn)
    }
    
    @IBAction func quizStartButton(_ sender: Any){
        self.present(ViewControllerFactory.createQuizSelectViewController(), animated: true)
    }
    
    @IBAction func quizAddButton(_ sender: Any){
        self.present(ViewControllerFactory.createQuizAddViewController(), animated: true)
    }
    
    @IBAction func quizDeleteButton(_ sender: Any){
        
    }
    
    @IBAction func quizListButton(_ sender: Any){
        
    }
    
    @IBAction func getInitialQuizButton(_ sender: Any){
        self.presenter.fetchInitialQuiz()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.attachView(view: self)
    }
}

extension HomeViewController: HomeViewProtocol {
}
