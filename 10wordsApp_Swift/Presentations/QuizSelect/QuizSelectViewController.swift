//
//  QuizSelectViewController.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/14.
//

import UIKit

final class QuizSelectViewController: UIViewController {
    private let presenter: QuizSelectProtocol
    
    @IBOutlet weak var testLabel: UILabel!
    
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
        self.presenter.fetchPlan()
    }
}

extension QuizSelectViewController: QuizSelectViewProtocol {
    func didFetchPlan(_ quizPlan: QuizPlan) {
        self.presenter.fetchQuizWords(quizPlan)
        
    }
    
    func didFetchQuizWords(_ quizWords: [QuizWordEntity]) {
        self.testLabel.text = quizWords[0].english
    }
}
