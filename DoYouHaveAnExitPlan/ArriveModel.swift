//
//  ArriveModel.swift
//  DoYouHaveAnExitPlan
//
//  Created by Tassja Kriek on 23/08/2016.
//  Copyright © 2016 Tassja. All rights reserved.
//

import UIKit

//first iteration of data entry, before I streamlined the process into a record

/*class ArriveModel {
    var ArriveList:[String:String] = [
        "Northfields":"Eastcote",
        "Oakwood":"Eastcote",
        "Mudchute":"Kingsbury",
        "Lewisham":"Beckton",
        "Paddington":"Beckton",
        "Queensbury":"Eastcote",
        "Poplar":"Embankment",
        "Shadwell":"Eastcote",
        "Wimbledon":"Embankment",
        "Tottenham Court Road":"Embankment",
        "Uxbridge":"Embankment",
        "Waterloo":"Snack",
        "West Ham":"Eastcote",
        "Woolwich Arsenal":"Beckton"
    ]
    func stats(station:String) -> [String]{
        var shortList:[String] = []
        for stat in Array(ArriveList.keys){
            if ArriveList[stat] == station{
                shortList += [stat]
            }
        }
        return shortList
    }*/
    
    /* Second Iteration of the model */
    class ArriveModel{
        var statList:[String] = [] //creates string array to hold selected stations
        func stats(station:String) ->[String]{
            return statList
        }
    }

    

    
    