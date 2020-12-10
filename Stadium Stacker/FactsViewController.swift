//
//  FactsViewController.swift
//  Stadium Stacker
//
//  Created by Alex Golden on 12/5/20.
//

import UIKit

class FactsViewController: UIViewController {
    @IBOutlet weak var factLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var factTextField: UITextField!

    
    var factArray: [String] = ["Alumni Stadium at Boston College is objectively the best stadium",
                               "Michigan Stadium, also known as \"The Big House\", is the largest stadium in the United States",
                               "Baseball stadiums such as Yankee Stadium, Tropicana Field, and Fenway Park have all hosted college football games",
                               "Aloha Stadium is the most Western Stadium in the United States and is the only major stadium in Hawaii",
                               "There are 7 stadiums named \"Memorial Stadium\" hosting notable teams such as Clemson, Indiana, and Nebraska"
                               ]
    
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
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
       factArray.append(factTextField.text!)
       factLabel.text = "\(factTextField.text!)"
        factTextField.text = ""
    }
}
