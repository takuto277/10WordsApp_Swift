//
//  QuizDeleteViewController.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/15.
//

import UIKit

final class QuizDeleteViewController: UIViewController{
    private let fetchQuizUseCase: FetchQuizUseCaseProtocol
    
    init(fetchQuizUseCase: FetchQuizUseCaseProtocol) {
        self.fetchQuizUseCase = fetchQuizUseCase
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
}

extension QuizDeleteViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.fetchQuizUseCase.execute().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "DeleteCell", for: indexPath)
        
        return cell
    }
    
}
