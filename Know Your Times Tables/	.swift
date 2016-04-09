//
//  ViewController.swift
//  Know Your Times Tables
//
//  Created by Lawrence Chen on 1/26/16.
//  Copyright © 2016 lchentheiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet var sliderValue: UISlider!

    @IBAction func sliderMoved(sender: AnyObject) {
        
        // Creates a new table with new values
        table.reloadData()
        
    }
    
    @IBOutlet var table: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        	
        return 20
        
    }
    
    // Defines contents of each individual cell - can put images / or can look of cells
    // Returns a UITableViewCell - along with all content with that cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let timesTable = Int(sliderValue.value * 20)
        
        cell.textLabel?.text = String(timesTable * (indexPath.row + 1))
        
        return cell
        
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

