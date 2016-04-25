//
//  Menu3TableViewCell.swift
//  TableViewLayoutsA1
//
//  Created by admin on 4/20/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import MapleBacon
import Alamofire

class Menu3TableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var imageViewLeft: UIImageView!
    @IBOutlet weak var imageViewRight: UIImageView!

    @IBOutlet weak var collectionView: UICollectionView!
    
    var imageBannerUrl = NSURL(string: "http://placehold.it/100x100")
    
    var JSONArray = NSArray()
    func loadData() {
        Alamofire.request(.POST, "https://www.all2sale.com/sendmail/testfunction/json/apitest.php", parameters: ["api":"productall", "productall":"12"]).responseJSON { response in
            //print(response.result)
            self.JSONArray = response.result.value as! NSArray
            self.collectionView.reloadData()
        }
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return JSONArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let col3 = collectionView.dequeueReusableCellWithReuseIdentifier("collectCell3", forIndexPath: indexPath) as? Menu3CollectionViewCell
        //col3?.imageViewProduct.setImageWithURL(imageBannerUrl!)
        let item = self.JSONArray[indexPath.row] as! NSDictionary
        var baseURL = "https://www.all2sale.com/store/"
        let imageURL = item.objectForKey("ProductShowImage") as? String
        baseURL += imageURL!
        let imageURL2 = NSURL(string: baseURL)
        col3?.imageViewProduct.setImageWithURL(imageURL2!)

        return col3!
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.registerNib(UINib(nibName: "Menu3CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "collectCell3")
        loadData()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
