//
//  CollectionTableViewCell.swift
//  CollectionView_DemoPractice
//
//  Created by tmtech1 on 18/10/22.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {

    static let identifier = "CollectionTableViewCell"
    
    @IBOutlet var myCustomCollectionView: UICollectionView!
    
    var aryCollectionModel = [Model]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        myCustomCollectionView.register(myCustomCollectionViewCell.nib(), forCellWithReuseIdentifier: myCustomCollectionViewCell.identifier)
        myCustomCollectionView.delegate = self
        myCustomCollectionView.dataSource = self
        
        //let layout = UICollectionViewFlowLayout()
        //layout.itemSize = CGSize(width: 250, height: 250)
        //myCustomCollectionView.collectionViewLayout = layout
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static func nib() -> UINib {
        
        return UINib(nibName: "CollectionTableViewCell", bundle: nil)
    }
    
    public func configure(with model: [Model]) {
        
        self.aryCollectionModel = model
        self.myCustomCollectionView.reloadData()
    }
}

extension CollectionTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return aryCollectionModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: myCustomCollectionViewCell.identifier, for: indexPath) as? myCustomCollectionViewCell else { return UICollectionViewCell() }
        
        cell.configure(with: aryCollectionModel[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 250, height: 250)
    }
    
}
