//
//  ProductDetailViewController.swift
//  TableViewLayoutsA1
//
//  Created by Jakkawad Chaiplee on 4/23/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import MapleBacon

class ProductDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var lblName:UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    var productDetail:AnyObject!
    
    var tCell0 = "tableCell0"
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell11") as? ProductDetailMenu0TableViewCell
        let item = self.productDetail as! NSDictionary
        var baseURL = "https://www.all2sale.com/store/"
        let imageURL = item.objectForKey("ProductShowImage") as? String
        baseURL += imageURL!
        let imageURL2 = NSURL(string: baseURL)
        cell0?.imageViewProduct.setImageWithURL(imageURL2!)

        return cell0!
    }
 
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 200
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(PassData.passJSON)
        productDetail = PassData.passJSON
        //print(productDetail.description)
        let item = self.productDetail as! NSDictionary
        let productName = item.objectForKey("ProductName") as? String
        //lblName.text = productName
        //
        self.title = item.objectForKey("ProductName") as? String
        
        tableView.registerNib(UINib(nibName: "ProductDetailMenu0TableViewCell", bundle: nil), forCellReuseIdentifier: "tableCell11")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
