//
//  ListCell.swift
//  GitHubLinkDemo
//
//  Created by BhaveshLab Dev on 31/01/22.
//

import UIKit

class ListCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var lblDetails: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        self.mainView.backgroundColor = .black
//        self.imgView.backgroundColor = .gray
//        self.lblUserName.backgroundColor = . green
//        self.lblDetails.backgroundColor = .yellow
        mainView.roundCorners(10)
        mainView.addViewShadow()
//        mainView.dropShadow(color: .gray, opacity: 1, offSet: CGSize(width: -1, height: 1), radius: 3, scale: true)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
