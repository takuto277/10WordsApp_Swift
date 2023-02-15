//
//  QuizSelectViewController.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/02/14.
//

import UIKit

class QuizSelectViewController: UIViewController {
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
        let quizShowViewController = QuizShowViewController()
        quizShowViewController.modalPresentationStyle = .fullScreen
        self.present(quizShowViewController, animated: true)
    }
    
//    @IBOutlet weak var collectionView: UICollectionView!
//    var InformationTable: UICollectionView!
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 10
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        //storyboard上のセルを生成　storyboardのIdentifierで付けたものをここで設定する
//        let cell:UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
//
//        //セル上のTag(1)とつけたUILabelを生成
//        let label = cell.contentView.viewWithTag(1) as! UILabel
//
//        //今回は簡易的にセルの番号をラベルのテキストに反映させる
//        label.text = String(indexPath.row + 1)
//
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//
//        let quizShowViewController = QuizShowViewController()
//        quizShowViewController.modalPresentationStyle = .fullScreen
//        self.present(quizShowViewController, animated: true)
//    }
//
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.collectionView.delegate = self
//        self.collectionView.dataSource = self
//        collectionView.register(UINib(nibName: "QuizSelectViewController", bundle: nil), forCellWithReuseIdentifier: "cell")
//
//    //    UINib(nibName: "UICollectionElementKindCell", bundle:nil)
    }
}
