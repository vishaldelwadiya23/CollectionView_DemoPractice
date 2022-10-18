//
//  TableViewVC.swift
//  CollectionView_DemoPractice
//
//  Created by tmtech1 on 18/10/22.
//

import UIKit

struct Model {
    let text: String
    let imgName: String
    
    init(text: String, imgName: String) {
        self.text = text
        self.imgName = imgName
    }
}

class TableViewVC: UIViewController {

    @IBOutlet var tblView: UITableView!
    
    var aryModel = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tblView.dataSource = self
        tblView.delegate = self
        
        tblView.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        
        // add element in model array
        for num in 1...19 {
            
            aryModel.append(Model(text: "image \(num)", imgName: "icon-\(num)"))
        }
        
        print(aryModel)

        
/*
        // add element in model
        aryModel.append(Model(text: "image 1", imgName: "icon-1"))
        aryModel.append(Model(text: "image 2", imgName: "icon-2"))
        aryModel.append(Model(text: "image 3", imgName: "icon-3"))
        aryModel.append(Model(text: "image 4", imgName: "icon-4"))
        aryModel.append(Model(text: "image 5", imgName: "icon-5"))
        aryModel.append(Model(text: "image 6", imgName: "icon-6"))
        aryModel.append(Model(text: "image 7", imgName: "icon-7"))
        aryModel.append(Model(text: "image 8", imgName: "icon-8"))
        aryModel.append(Model(text: "image 9", imgName: "icon-9"))
        aryModel.append(Model(text: "image 10", imgName: "icon-10"))
        aryModel.append(Model(text: "image 11", imgName: "icon-11"))
        aryModel.append(Model(text: "image 12", imgName: "icon-12"))
        aryModel.append(Model(text: "image 13", imgName: "icon-13"))
        aryModel.append(Model(text: "image 14", imgName: "icon-14"))
        aryModel.append(Model(text: "image 15", imgName: "icon-15"))
        aryModel.append(Model(text: "image 16", imgName: "icon-16"))
        aryModel.append(Model(text: "image 17", imgName: "icon-17"))
        aryModel.append(Model(text: "image 18", imgName: "icon-18"))
        aryModel.append(Model(text: "image 19", imgName: "icon-19"))
*/
        
    }

}

extension TableViewVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as? CollectionTableViewCell else { return UITableViewCell() }
        
        cell.configure(with: aryModel)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
}
