//
//  DepartTableView.swift
//  DoYouHaveAnExitPlan
//
//  Created by Tassja Kriek on 23/08/2016.
//  Copyright © 2016 Tassja. All rights reserved.
//

import UIKit

class DepartTableViewController: UITableViewController {
    
    var departs = DepartModel()//creating temporary storage in order to manipulate values in this class
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1 //activates the tableview class
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return departs.depart.count //this function counts the amount of entries to create a value to create the actual table view with a correct number of values
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell",
                                                               forIndexPath: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = departs.depart[row]
        return cell //populates the labels of the created table view with the dictionary created DepartModel
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {//this function takes the input (the cell that the user taps) and propares it for a segue so it can be accesed in the next viewcontroller, in this case the ArriveTableViewController
        if segue.identifier == "Stations"{//locates the correct segue and applies the desired effect detailed below
            let vc = segue.destinationViewController as! ArriveTableViewController
            let selectedStat = departs.depart[(tableView.indexPathForSelectedRow?.row)!] //stores the user selection
            vc.station = selectedStat
            vc.navigationItem.title = selectedStat //edits the header to show the user their previous choice
            vc.arriveModel.statList = departs.stats(selectedStat) //transfer user selection to desired segue
        }
    }
    
}
