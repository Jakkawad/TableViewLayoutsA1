//
//  ViewController.swift
//  TableViewLayoutsA1
//
//  Created by admin on 4/19/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    let items = ["item1", "item2", "item3", "item4"]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return items.count
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as! Menu1TableViewCell
        //let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell1") as! Menu2TableViewCell
        
        //return cell0
        
        if indexPath.row == 0 {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as! Menu1TableViewCell
            
            return cell0
        } else {
            let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1") as! Menu2TableViewCell
            
            return cell1
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.registerNib(UINib(nibName: "Menu1TableViewCell", bundle: nil), forCellReuseIdentifier: "tableCell0")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

