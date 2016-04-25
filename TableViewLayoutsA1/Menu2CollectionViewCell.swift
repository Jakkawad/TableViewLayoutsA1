//
//  Menu2CollectionViewCell.swift
//  TableViewLayoutsA1
//
//  Created by admin on 4/19/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Menu2CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageViewProduct: UIImageView!

    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //lblName.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.7)
        lblName.backgroundColor = UIColor(red: 116, green: 116, blue: 116, alpha: 0.7)
    }

}
