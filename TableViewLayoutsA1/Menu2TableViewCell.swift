//
//  Menu2TableViewCell.swift
//  TableViewLayoutsA1
//
//  Created by admin on 4/19/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import MapleBacon
import Alamofire

class Menu2TableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var imageProduct = NSURL(string: "http://placehold.it/100x100")
    
    var JSONArray = NSArray()
    func loadData() {
        Alamofire.request(.POST, "https://www.all2sale.com/sendmail/testfunction/json/apitest.php", parameters: ["api":"productall", "productall":"12"]).responseJSON { response in
            print(response.result.value)
            //print(response.data)
            //print(response.response)
            self.JSONArray = response.result.value as! NSArray
            self.collectionView.reloadData()
        }
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return JSONArray.count
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let col0 = collectionView.dequeueReusableCellWithReuseIdentifier("colCell0", forIndexPath: indexPath) as? Menu2CollectionViewCell
        //col0.imageViewProduct.setImageWithURL(imageProduct!)
        let item = self.JSONArray[indexPath.row] as! NSDictionary
        var baseURL = "https://www.all2sale.com/store/"
        let imageURL = item.objectForKey("ProductShowImage") as? String
        baseURL += imageURL!
        let imageURL2 = NSURL(string: baseURL)
        col0?.imageViewProduct.setImageWithURL(imageURL2!)

        col0?.lblName.text = item.objectForKey("ProductName") as? String
        return col0!
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        collectionView.registerNib(UINib(nibName: "Menu2CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "colCell0")
        loadData()
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
