//
//  QuizDeleteViewController.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/15.
//

import UIKit

final class QuizDeleteViewController: UIViewController{
    private let presenter: QuizDelteProtocol
    
    init(presenter: QuizDelteProtocol) {
        self.presenter = presenter
        super .init(nibName: String(describing: QuizDeleteViewController.self), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: String(describing: QuizDeleteTableViewCell.self), bundle: nil), forCellReuseIdentifier: "QuizDeleteCell")
        self.tableView.reloadData()
    }
}

extension QuizDeleteViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.presenter.fetchQuizWords().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuizDeleteCell", for: indexPath) as! QuizDeleteTableViewCell
        
        let quiz = self.presenter.fetchQuizWords()
        
        cell.idLabel?.text = String(quiz[indexPath.row].key)
        cell.englishLabel?.text = quiz[indexPath.row].english
        cell.japaneseLabel?.text = quiz[indexPath.row].japanese
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // セルがタップされた時の処理を記述する
    }
}
