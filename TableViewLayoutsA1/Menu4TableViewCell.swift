//
//  Menu4TableViewCell.swift
//  TableViewLayoutsA1
//
//  Created by admin on 4/22/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import MapleBacon
import Alamofire

class Menu4TableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {

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
        //return 12
        return self.JSONArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let col2 = collectionView.dequeueReusableCellWithReuseIdentifier("collectCell2", forIndexPath: indexPath) as? Menu4CollectionViewCell
        let item = self.JSONArray[indexPath.row] as! NSDictionary
        var baseURL = "https://www.all2sale.com/store/"
        let imageURL = item.objectForKey("ProductShowImage") as? String
        baseURL += imageURL!
        let imageURL2 = NSURL(string: baseURL)
        col2?.imageViewProduct.setImageWithURL(imageURL2!)
        //col2?.imageViewProduct.setImageWithURL(imageBannerUrl!)
        return col2!
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        //print(JSONArray[indexPath.row])
        PassData.passJSON = self.JSONArray[indexPath.row] as! NSDictionary
        //print(PassData.passJSON)
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //collectionView.registerNib(UINib(nibName: "Menu4CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "collectCell2")
        loadData()
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
