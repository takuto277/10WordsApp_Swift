//
//  QuizShowViewController.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/14.
//

import UIKit

class QuizShowViewController: UIViewController {
    
    private let presenter: QuizShowProtocol
    
    init(presenter: QuizShowProtocol) {
        self.presenter = presenter
        super .init(nibName: String(describing: QuizShowViewController.self), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let wordsArray = [("apple", "リンゴ"),
                      ("banana", "バナナ"),
                      ("11", "リンゴ"),
                      ("12", "バナナ"),
                      ("13", "リンゴ"),
                      ("14", "バナナ"),
                      ("15", "リンゴ"),
                      ("16", "バナナ"),
                      ("17", "リンゴ"),
                      ("18", "バナナ"),
                      ("19", "リンゴ"),
                      ("20", "バナナ")]
    
    var index = 0
    
    @IBOutlet weak var englishLabel: UILabel!
    @IBOutlet weak var japaneseLabel: UILabel!
    
    @IBAction func japaneseHiddenButton(_ sender: Any) {
        self.japaneseLabel.isHidden = !self.japaneseLabel.isHidden
    }
    
    @IBAction func quizCurrentButton(_ sender: Any) {
        self.index += 1
        englishLabel.text = wordsArray[index].0
        japaneseLabel.text = wordsArray[index].1
    }
    
    @IBAction func quizWrongButton(_ sender: Any) {
        self.index = 0
        englishLabel.text = wordsArray[index].0
        japaneseLabel.text = wordsArray[index].1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        englishLabel.text = wordsArray[index].0
        japaneseLabel.text = wordsArray[index].1
    }
}
