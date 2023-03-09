//
//  TableViewCell.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/03/08.
//

import UIKit

class QuizDeleteTableViewCell: UITableViewCell {

    @IBOutlet weak var idLabel: UILabel?
    @IBOutlet weak var englishLabel: UILabel?
    @IBOutlet weak var japaneseLabel: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
