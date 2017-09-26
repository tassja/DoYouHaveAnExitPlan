//
//  DepartModel.swift
//  DoYouHaveAnExitPlan
//
//  Created by Tassja Kriek on 23/08/2016.
//  Copyright © 2016 Tassja. All rights reserved.
//

import UIKit

class DepartModel{
    /*var depart:[String] = [ original data before streamline
        "Beckton",
        "Eastcote",
        "Embankment"]*/
    
    var departList = [String:[String]]() //making a dictionary file for the program, the optimal way to store data in xCode with multiple attributes
    
    var depart:[String]{ // assigns string to the varible type
        get{
            return Array(departList.keys)
        }
    }
    
    func addItem(station:String,stats:[String]){
        departList[station] = stats // adding field for the departing station
    }
    init(){
        //what we do here would usually be a database or file access but couldn't figure out how
        addItem("Waterloo", //adding the possible departing stations
                stats: [// adding the possible stations to travel to from this departing station
                    "Archway",
                    "Heathcote",
            ])
        
        addItem("Elephant & Castle",
                stats: [
                    "Kilburn",
                    "Bank",
                    "Embankment",
                    ])
        addItem("Hammersmith",
                stats: [
                    "Ickenham",
                    "Northolt",
                    "Plaistow",
            ])
        

}
    
    func stats(station:String) -> [String]{ //for use with the model, using the dictionary property check that the dictionary does in fact exist using optinal chaining then return our station list. If no entry, return an empty array
        if let list = self.departList[station]{
            return list
        } else {
            return []
        }
    }
}