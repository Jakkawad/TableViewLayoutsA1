//
//  Menu3TableViewCell.swift
//  TableViewLayoutsA1
//
//  Created by admin on 4/20/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import MapleBacon

class Menu3TableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var imageViewLeft: UIImageView!
    @IBOutlet weak var imageViewRight: UIImageView!

    @IBOutlet weak var collectionView: UICollectionView!
    
    var imageBannerUrl = NSURL(string: "http://placehold.it/100x100")
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let col3 = collectionView.dequeueReusableCellWithReuseIdentifier("collectCell3", forIndexPath: indexPath) as? Menu3CollectionViewCell
        col3?.imageViewProduct.setImageWithURL(imageBannerUrl!)
        return col3!
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.registerNib(UINib(nibName: "Menu3CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "collectCell3")
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
