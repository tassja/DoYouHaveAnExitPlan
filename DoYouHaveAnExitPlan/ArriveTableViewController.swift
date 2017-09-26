//
//  ArriveTableViewController.swift
//  DoYouHaveAnExitPlan
//
//  Created by Tassja Kriek on 23/08/2016.
//  Copyright © 2016 Tassja. All rights reserved.
//

import UIKit

class ArriveTableViewController: UITableViewController {
    
    let arriveModel = ArriveModel() //creating temporary storage in order to manipulate values in this class
    var station = "Kilburn" //intilise variable
    var stats = [String]() //temporary array for use in this class
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stats = arriveModel.stats(station)
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1 //activates the tableview class
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stats.count //this function counts the amount of entries to create a value to create the actual table view with a correct number of values
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = stats[row]
        
        return cell //populates the labels of the created table view with the dictionary created ArrvModel
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) { //this function takes the input (the cell that the user taps) and propares it for a segue so it can be accesed in the next viewcontroller, in this case the InfoViewController
        let selectedRow = (tableView.indexPathForSelectedRow?.row)!
        if segue.identifier == "Info"{ //locates the correct segue and applies the desired effect detailed below
            let vc = segue.destinationViewController //not editing values in the InfoViewController
                as! InfoViewController
            vc.stat = stats[selectedRow] //edits the header to show the user their previous choice
        }
    }

}
