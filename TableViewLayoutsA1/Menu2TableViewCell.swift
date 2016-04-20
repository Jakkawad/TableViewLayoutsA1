//
//  Menu2TableViewCell.swift
//  TableViewLayoutsA1
//
//  Created by admin on 4/19/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Menu2TableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let col0 = collectionView.dequeueReusableCellWithReuseIdentifier("colCell0", forIndexPath: indexPath) as! Menu2CollectionViewCell
        
        return col0
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        collectionView.registerNib(UINib(nibName: "Menu2CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "colCell0")
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
