//
//  QuizShowViewController.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/14.
//

import UIKit

final class QuizShowViewController: UIViewController {
    
    private let presenter: QuizShowProtocol
    
    init(presenter: QuizShowProtocol) {
        self.presenter = presenter
        super .init(nibName: String(describing: QuizShowViewController.self), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // TODO: 愚直すぎる実装のため、修正予定
    var wordsArray: [QuizWordEntity]?
    
    var index = 0
    
    @IBOutlet weak var englishLabel: UILabel!
    @IBOutlet weak var japaneseLabel: UILabel!
    
    @IBAction func japaneseHiddenButton(_ sender: Any) {
        self.japaneseLabel.isHidden = !self.japaneseLabel.isHidden
    }
    
    @IBAction func quizCurrentButton(_ sender: Any) {
        self.index += 1
        englishLabel.text = wordsArray?[index].english
        japaneseLabel.text = wordsArray?[index].japanese
    }
    
    @IBAction func quizWrongButton(_ sender: Any) {
        self.index = 0
        englishLabel.text = wordsArray?[index].english
        japaneseLabel.text = wordsArray?[index].japanese
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.attachView(self)
        self.presenter.fetchPlan()
    }
}

extension QuizShowViewController: QuizShowViewProtocol {
    func didFetchPlan(_ quizPlan: QuizPlan) {
        self.presenter.fetchQuizWords(quizPlan)
    }

    func didFetchQuizWords(_ quizWords: [QuizWordEntity]) {
        self.wordsArray = quizWords
        englishLabel.text = quizWords[index].english
        japaneseLabel.text = quizWords[index].japanese
    }
    
    
}
