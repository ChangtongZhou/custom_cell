//
//  ViewController.swift
//  CustomCell
//
//  Created by Changtong Zhou on 7/19/16.
//  Copyright © 2016 Changtong Zhou. All rights reserved.
//

import UIKit

class CustomCellsViewController: UITableViewController {
    var nums = [1, 90, 32, 23, 9, 12]
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomCell") as! CustomCell
        cell.rightLabel.text = "\(nums[indexPath.row])"
        if nums[indexPath.row] > 24{
        
            cell.leftButton.backgroundColor = UIColor.greenColor()
        } else{
        
            cell.leftButton.backgroundColor = UIColor.redColor()
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nums.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

