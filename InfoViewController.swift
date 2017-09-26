//
//  InfoViewController.swift
//  DoYouHaveAnExitPlan
//
//  Created by Tassja Kriek on 23/08/2016.
//  Copyright © 2016 Tassja. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    // declare input labels, these show the lines that the users selcets in the storyboard
    @IBOutlet weak var departLabel: UILabel!
    @IBOutlet weak var arriveLabel: UILabel!
    
    //declare coloured lines labels, able to manipulate the colour backgournd of these labels
    @IBOutlet weak var departLine: UILabel!
    @IBOutlet weak var arrvLine: UILabel!
    
    //declare platfrom labels, change as the stations selected change
    @IBOutlet weak var departPlat: UILabel!
    @IBOutlet weak var arrvPlat: UILabel!
    
    
    //declare image outlets, able to highlight apporpiate carriages
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image6: UIImageView!
    @IBOutlet weak var image7: UIImageView!
    @IBOutlet weak var image8: UIImageView!
    
    var stat = "Journey" // Key
    
    var stationInfoModel = StationInfoModel() //setting up the storyboard with the information gathere through the segues
    
    func displayStationInfo(){ //function to display the data
        if let stationInfo = stationInfoModel.list[stat]{
            departLabel.text = String(stationInfo.departLabel) //change the label to data as per input
            arriveLabel.text = String(stationInfo.arrvLabel) //" "
            arrvPlat.text = String(stationInfo.platnum2)
            departPlat.text = String(stationInfo.platnum1)
            
        } else { //error in case of no data input
            departLabel.text = "Not Found"
            arriveLabel.text = "Not Found"
            
        }
        let stationInfo = stationInfoModel.list[stat] //allow the array from the first viewcontroller to be utilitesd in setting values for the storyboard below
        if stationInfo!.line == "T4" {
            
            departLine.text = " T4 Line Northbound" //updating the storyboard
            arrvLine.text = " T2 Line Southbound"
            departLine.backgroundColor = UIColor.cyanColor()
            arrvLine.backgroundColor = UIColor.yellowColor()
            image1.image = UIImage(named:"001.png")!
            image2.image = UIImage(named:"002.png")!
            
        }; if stationInfo!.line == "T5" {
            
            departLine.text = " T1 Line Westbound"
            arrvLine.text = " T3 Line Eastbound"
            departLine.backgroundColor = UIColor.greenColor()
            arrvLine.backgroundColor = UIColor.blueColor()
            image3.image = UIImage(named:"003.png")!
            image4.image = UIImage(named:"004.png")!
            
        }
        
        if stationInfo!.line == "T3" {
            
            departLine.text = " T1 Line Eastbound"
            arrvLine.text = " T2 Line Southbound"
            departLine.backgroundColor = UIColor.greenColor()
            arrvLine.backgroundColor = UIColor.yellowColor()
            image5.image = UIImage(named:"005.png")!
            image6.image = UIImage(named:"006.png")!
            
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad() //set the nav bar text on top to the previously seelcted value to remind users what they chose
        navigationItem.title = stat
        displayStationInfo()
    }

}
