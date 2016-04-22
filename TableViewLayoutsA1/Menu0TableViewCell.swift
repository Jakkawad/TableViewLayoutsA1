//
//  Menu0TableViewCell.swift
//  TableViewLayoutsA1
//
//  Created by admin on 4/22/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Menu0TableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var menuArray = ["เสื้อ", "กางเกง", "รองเท้า", "กระเป๋า", "เครื่องใช้ในบ้าน"]
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let col4 = collectionView.dequeueReusableCellWithReuseIdentifier("collectCell4", forIndexPath: indexPath) as? Menu0CollectionViewCell
        col4?.lblName.text = "Menu"
        return col4!
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.registerNib(UINib(nibName: "Menu0CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "collectCell4")
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
