//
//  FactsViewController.swift
//  Stadium Stacker
//
//  Created by Alex Golden on 12/5/20.
//

import UIKit

class FactsViewController: UIViewController {
    @IBOutlet weak var factLabel: UILabel!
    
    var factArray: [String] = ["Go Eags", "Suck2BU", "Go Navy", "Beat Army"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomFact()
        
    }
    
    func getRandomFact() {
        var randomFact = factArray[Int.random(in: 0...factArray.count-1)]
        
        while factLabel.text == randomFact {
            randomFact = factArray[Int.random(in: 0...factArray.count-1)]
        }
        factLabel.text = randomFact
    }
    
    @IBAction func randomButton(_ sender: UIButton) {
     getRandomFact()
    }
    
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
