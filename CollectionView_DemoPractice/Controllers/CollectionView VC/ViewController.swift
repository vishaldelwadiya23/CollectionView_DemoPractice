//
//  ViewController.swift
//  CollectionView_DemoPractice
//
//  Created by tmtech1 on 17/10/22.
//

import UIKit

class ViewController: UIViewController {

    // outlets
    @IBOutlet var myCollecionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // cellection view cell register
        myCollecionView.register(myCollectionViewCell.nib(), forCellWithReuseIdentifier: myCollectionViewCell.identifier)
        
        // collectionview delegate and datasource
        myCollecionView.delegate = self
        myCollecionView.dataSource = self
        
        // collectionview layout
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 120, height: 120)
        myCollecionView.collectionViewLayout = layout
    }

}

//MARK: - Collection view delegate methods
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: myCollectionViewCell.identifier, for: indexPath) as? myCollectionViewCell else { return UICollectionViewCell() }
        
        cell.configure(with: UIImage(named: "Car-1")!)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("you tapped me, indexpath:- \(indexPath), ndexpath item: - \(indexPath.item)")
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 120, height: 120)
    }
}
