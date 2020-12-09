//
//  ViewController.swift
//  Stadium Stacker
//
//  Created by Alex Golden on 12/4/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var factButton: UIButton!
    @IBOutlet weak var listButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var goButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func goButtonPressed(_ sender: UIButton) {  performSegue(withIdentifier: "ShowSearch", sender: nil)
    }
    @IBAction func listButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ShowList", sender: nil)
    }
    @IBAction func factButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ShowFact", sender: nil)
    }
    
    
}

