//
//  StadiumInfoViewController.swift
//  Stadium Stacker
//
//  Created by Alex Golden on 12/6/20.
//

import UIKit

class StadiumInfoViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var capacityLabel: UILabel!
    @IBOutlet weak var builtLabel: UILabel!
    
    var stadiumInfo: StadiumInfo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if stadiumInfo == nil {
     //       stadiumInfo = StadiumInfo(name: "", city: "", state: "", capacity: 0)
            stadiumInfo = StadiumInfo(name: "", city: "", state: "", capacity: 0, year_constructed: 0)
     
        }
        
       updateUserInterface()
    }
    
    func updateUserInterface() {
        print("user interface updated")
        nameLabel.text = "\(stadiumInfo.name)"
       cityLabel.text = "\(stadiumInfo.city)"
       stateLabel.text = "\(stadiumInfo.state)"
         capacityLabel.text = "\(stadiumInfo.capacity)"
        let year_constructed = stadiumInfo.year_constructed ?? 0
        let yearString = year_constructed == 0 ? "--" : "\(year_constructed)"
        builtLabel.text = yearString
//        if stadiumInfo.year_constructed != Int {
//            builtLabel.text = "no year available"
//        } else {
//            builtLabel.text = "\(String(describing: stadiumInfo.year_constructed))"
//        }
    }
    
    
}
