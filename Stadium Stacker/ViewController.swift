//
//  ViewController.swift
//  Stadium Stacker
//
//  Created by Alex Golden on 12/4/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var factButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    @IBAction func factButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ShowFact", sender: nil)
    }
    

}

