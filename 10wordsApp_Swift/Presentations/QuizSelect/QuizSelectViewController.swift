//
//  QuizSelectViewController.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/14.
//

import UIKit

final class QuizSelectViewController: UIViewController {
    private let presenter: QuizSelectProtocol
    
    init(presenter: QuizSelectProtocol) {
        self.presenter = presenter
        super.init(nibName: String(describing: QuizSelectViewController
            .self), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func button(_ sender: Any) {
        self.present(ViewControllerFactory.createQuizShowViewController(), animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.attachView(self)
        self.presenter.getPlan()
    }
}

extension QuizSelectViewController: QuizSelectViewProtocol {
    func didGetPlan(_ isInitial: Bool) {
        
    }
}
