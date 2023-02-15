//
//  QuizAddViewController.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/15.
//

import UIKit

class QuizAddViewController: UIViewController {

    
    
    @IBOutlet weak var englishTextField: UITextField!
    @IBOutlet weak var japaneseTextField: UITextField!
    
    
    @IBAction func registerButton(_ sender: Any) {
        //TODO: Realmに登録
        let homeViewController = HomeViewController()
        homeViewController.modalPresentationStyle = .fullScreen
        self.present(homeViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
