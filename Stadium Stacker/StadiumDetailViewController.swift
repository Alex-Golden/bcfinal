//
//  StadiumDetailViewController.swift
//  Stadium Stacker
//
//  Created by Alex Golden on 12/4/20.
//

import UIKit

class StadiumDetailViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var stadiums = Stadiums()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        stadiums.getData {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowInfo" {
            let destination = segue.destination as! StadiumInfoViewController
            let selectedIndexPath = tableView.indexPathForSelectedRow!
            destination.stadiumInfo = stadiums.stadiumArray[selectedIndexPath.row]
        }
    }
    
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
}
extension StadiumDetailViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stadiums.stadiumArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row + 1). \(stadiums.stadiumArray[indexPath.row].name)"
        cell.detailTextLabel?.text = "\(stadiums.stadiumArray[indexPath.row].capacity)"
        return cell
    }

}


