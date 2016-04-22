//
//  ViewController.swift
//  TableViewLayoutsA1
//
//  Created by admin on 4/19/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import MapleBacon

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    let items = ["item1", "item2", "item3", "item4"]
    var imageBannerUrl = NSURL(string: "http://placehold.it/320x100")
    var imagePromotionLeft = NSURL(string: "http://placehold.it/156x200")
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return items.count
        return 8
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as! Menu1TableViewCell
        //let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell1") as! Menu2TableViewCell
        
        //return cell0
        if indexPath.row == 0 {
            let menu0 = tableView.dequeueReusableCellWithIdentifier("tableMenu0") as? Menu0TableViewCell
            
            return menu0!
        } else if indexPath.row == 1 {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as? Menu1TableViewCell
            cell0?.imageViewBanner.setImageWithURL(imageBannerUrl!)
            return cell0!
        } else if indexPath.row == 2 {
            let menu1 = tableView.dequeueReusableCellWithIdentifier("tableMenu1")
            
            return menu1!
        } else if indexPath.row == 3 {
            let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1") as? Menu2TableViewCell
            
            return cell1!
        } else if indexPath.row == 4 {
            let menu2 = tableView.dequeueReusableCellWithIdentifier("tableMenu2")
            
            return menu2!
        } else if indexPath.row == 5 {
            let cell2 = tableView.dequeueReusableCellWithIdentifier("tableCell2") as? Menu3TableViewCell
            //cell2?.imageViewLeft.setImageWithURL(imagePromotionLeft!)
            //cell2?.imageViewRight.setImageWithURL(imagePromotionLeft!)
            return cell2!
        } else if indexPath.row == 6 {
            let menu3 = tableView.dequeueReusableCellWithIdentifier("tableMenu3")
            
            return menu3!
        } else {
            let cell3 = tableView.dequeueReusableCellWithIdentifier("tableCell3") as? Menu4TableViewCell
            
            return cell3!
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 55
        } else if indexPath.row == 1 {
            return 110
        } else if indexPath.row == 2 {
            return 24
        } else if indexPath.row == 3 {
            return 110
        } else if indexPath.row == 4 {
            return 24
        } else if indexPath.row == 5 {
            return 420
        } else if indexPath.row == 6 {
            return 24
        } else {
            return 450
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.registerNib(UINib(nibName: "Menu1TableViewCell", bundle: nil), forCellReuseIdentifier: "tableCell0")
        tableView.registerNib(UINib(nibName: "Menu3TableViewCell", bundle: nil), forCellReuseIdentifier: "tableCell2")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

