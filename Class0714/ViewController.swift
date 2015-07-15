//
//  ViewController.swift
//  Class0714
//
//  Created by Alison Loughman on 7/14/15.
//  Copyright (c) 2015 aloughman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,  UITableViewDataSource {
    
    
    @IBOutlet weak var SampleTable: UITableView!
   
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        SampleTable.delegate = self
        SampleTable.dataSource = self
    }
    
    
    
    
    var DogNames = ["Lassie","Wishbone","Chance"]
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = SampleTable.dequeueReusableCellWithIdentifier("CellID") as! UITableViewCell
        
        var cellLabel = UILabel(frame: CGRectMake(10, 0, 300, 50))
        cellLabel.text = DogNames[indexPath.row]
        cell.addSubview(cellLabel)
        
    
        return cell
        
    }
    
    func tableView(tableView:UITableView,  NumberOfRowsInSection section: Int) -> Int {
     
        
        return DogNames.count;
        
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

