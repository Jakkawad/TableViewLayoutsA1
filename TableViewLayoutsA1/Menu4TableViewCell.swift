//
//  Menu4TableViewCell.swift
//  TableViewLayoutsA1
//
//  Created by admin on 4/22/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import MapleBacon

class Menu4TableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var imageBannerUrl = NSURL(string: "http://placehold.it/100x100")
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let col2 = collectionView.dequeueReusableCellWithReuseIdentifier("collectCell2", forIndexPath: indexPath) as? Menu4CollectionViewCell
        col2?.imageViewProduct.setImageWithURL(imageBannerUrl!)
        return col2!
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.registerNib(UINib(nibName: "Menu4CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "collectCell2")
        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
