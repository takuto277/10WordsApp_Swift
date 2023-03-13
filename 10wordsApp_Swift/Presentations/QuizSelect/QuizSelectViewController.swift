//
//  QuizSelectViewController.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/14.
//

import UIKit

final class QuizSelectViewController: UIViewController {
    private let presenter: QuizSelectProtocol
    
  //  @IBOutlet weak var testLabel: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
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
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.flowLayout.estimatedItemSize = CGSize(width: collectionView.frame.width / 5, height: collectionView.frame.height / 5)
        self.collectionView.register(UINib(nibName: String(describing: QuizSelectCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: "QuizSelectCollectionViewCell")
        self.presenter.attachView(self)
        self.presenter.fetchPlan()
    }
}

extension QuizSelectViewController: QuizSelectViewProtocol {
    func didFetchPlan(_ quizPlan: QuizPlan) {
        self.presenter.fetchQuizWords(quizPlan)
        
    }
    
    func didFetchQuizWords(_ quizWords: [QuizWordEntity]) {
      //  self.testLabel.text = quizWords[1].english
    }
}

extension QuizSelectViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuizSelectCollectionViewCell", for: indexPath) as! QuizSelectCollectionViewCell
        
        cell.textlabel.text = "1"
        
        return cell
    }
}
