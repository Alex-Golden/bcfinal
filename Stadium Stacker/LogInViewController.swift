//
//  LogInViewController.swift
//  Stadium Stacker
//
//  Created by Alex Golden on 12/4/20.
//

import UIKit

class LogInViewController: UIViewController {
    @IBOutlet weak var introLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func labelTapped(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "FirstShow", sender: UITapGestureRecognizer.self)
    }
    
}
