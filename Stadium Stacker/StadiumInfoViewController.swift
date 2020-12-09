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
            stadiumInfo = StadiumInfo(name: "Alumni Stadium", city: "Boston", state: "MA")
            //add cap & year 
        }
        
       updateUserInterface()
    }
    
    func updateUserInterface() {
        print("user interface updated")
       // nameLabel.text = "\(StadiumInfo.name)"
      //  cityLabel.text = "\(StadiumInfo.city)"
     //   stateLabel.text = "\(StadiumInfo.state)"
        // capacityLabel.text = "\(StadiumInfo.capacity)"
        // builtLabel.text = "\(StadiumInfo.year_constructed)"
    }
    
    
}
