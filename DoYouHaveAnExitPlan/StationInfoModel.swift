//
//  StationInfoModel.swift
//  DoYouHaveAnExitPlan
//
//  Created by Tassja Kriek on 23/08/2016.
//  Copyright © 2016 Tassja. All rights reserved.
//

import UIKit

class stationItemInfo{ // the record or row of the database
    var name = "" //declaring variables
    var platnum2 = 0
    var platnum1 = 0
    var departLabel = ""
    var arrvLabel = ""
    var line = ""
    init(name:String,platnum2:Int,platnum1:Int,departLabel:String,arrvLabel:String,line:String){
        self.name = name  //primary key
        self.platnum2 = platnum2 //allowing the various variables types (interger,double etc) to be integrated into the logic of the porgram wihtout worrying about converting types throughout
        self.platnum1 = platnum1
        self.departLabel = departLabel
        self.arrvLabel = arrvLabel
        self.line = line
    }
    
    
}

class StationInfoModel{ // the file of the database
    var list = [String:stationItemInfo]() //create the record for the
    
    func addItem(key:String,platnum2:Int,platnum1:Int,departLabel:String,arrvLabel:String,line:String){ // adding sections to the record created above
        let stationItem = stationItemInfo(name: key, platnum2: platnum2, platnum1: platnum1, departLabel: departLabel,arrvLabel: arrvLabel,line: line) // populating the catergories with the relevant declared variables
        list[key] = stationItem  //updates the record
    }
    
    init(){
        // this would normally be a loaded file saved exteranally - bett coding practice
        addItem("Archway", //choose the label for the TableView
                platnum2: 04, //the platform numbers for the stroyboard
                platnum1: 12,
                departLabel: "Waterloo", //the data for the departing/arrving labels, to be displayed on the storyboard
                arrvLabel: "Archway",
                line: "T4") // classifies the carriage numbers that will be highlihghted on the storyboard
        addItem("Heathcote",
                platnum2: 04,
                platnum1: 13,
                departLabel: "Waterloo",
                arrvLabel: "Heathcote",
                line: "T5")
        addItem("Kilburn",
                platnum2: 06,
                platnum1: 18,
                departLabel: "Elephant & Castle",
                arrvLabel: "Kilburn",
                line: "T3")
        addItem("Bank",
                platnum2: 06,
                platnum1: 11,
                departLabel: "Elephant & Castle",
                arrvLabel: "Bank",
                line: "T4")
        addItem("Embankment",
                platnum2: 06,
                platnum1: 20,
                departLabel: "Elephant & Castle",
                arrvLabel: "Embankment",
                line: "T5")
        addItem("Ickenham",
                platnum2: 11,
                platnum1: 17,
                departLabel: "Hammersmith",
                arrvLabel: "Ickenham",
                line: "T3")
        addItem("Northolt",
                platnum2: 11,
                platnum1: 23,
                departLabel: "Hammersmith",
                arrvLabel: "Northholt",
                line: "T4")
        addItem("Plaistow",
                platnum2: 11,
                platnum1: 07,
                departLabel: "Hammersmith",
                arrvLabel: "Plaistow",
                line: "T5")
        
        
    }
    
}