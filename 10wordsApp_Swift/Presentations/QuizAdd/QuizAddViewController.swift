//
//  QuizAddViewController.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/15.
//

import UIKit

final class QuizAddViewController: UIViewController {
    private let presenter: QuizAddProtocol
    
    init(presenter: QuizAddProtocol) {
        self.presenter = presenter
        super .init(nibName: String(describing: QuizAddViewController.self), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var englishTextField: UITextField!
    @IBOutlet weak var japaneseTextField: UITextField!
    
    
    @IBAction func registerButton(_ sender: Any) {
        let quizWordEntity = QuizWordEntity(
            english: englishTextField.text ?? "",
            japanese: japaneseTextField.text ?? ""
        )
        self.presenter.saveQuizWord(quizWordEntity)
        
        self.present(ViewControllerFactory.createHomeViewController(), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
