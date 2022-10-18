//
//  myCustomCollectionViewCell.swift
//  CollectionView_DemoPractice
//
//  Created by tmtech1 on 18/10/22.
//

import UIKit

class myCustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImgView: UIImageView!
    
    static let identifier = "myCustomCollectionViewCell"
    
    static func nib() -> UINib {
        
        return UINib(nibName: "myCustomCollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func configure(with model: Model) {
        
        self.myLabel.text = model.text
        self.myImgView.image = UIImage(named: model.imgName)
        self.myImgView.contentMode = .scaleAspectFill
    }
}
