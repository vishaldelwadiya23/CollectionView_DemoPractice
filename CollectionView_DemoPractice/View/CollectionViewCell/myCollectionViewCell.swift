//
//  myCollectionViewCell.swift
//  CollectionView_DemoPractice
//
//  Created by tmtech1 on 18/10/22.
//

import UIKit

class myCollectionViewCell: UICollectionViewCell {

    @IBOutlet var imgView: UIImageView!
    
    // collection view cell identifier
    static let identifier = "myCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // configure func set image in imageview to cell
    func configure(with image: UIImage) {
        imgView.image = image
    }

    // xib file
    static func nib() -> UINib {
        return UINib(nibName: "myCollectionViewCell", bundle: nil)
    }
}
