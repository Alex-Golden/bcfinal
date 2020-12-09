//
//  TableViewController.swift
//  Stadium Stacker
//
//  Created by Alex Golden on 12/8/20.
//

import UIKit

class TableViewController: UITableViewController, UISearchBarDelegate {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var backBarButton: UIBarButtonItem!
    var data: [String] = []
    var filteredData: [String]!
    
    var stadiums = Stadiums()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self

        stadiums.getData {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        for indexPath in 0..<stadiums.stadiumArray.count {
            data.append(stadiums.stadiumArray[indexPath].name)
        }
        
        filteredData = data
        //print(filteredData)
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return stadiums.stadiumArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
      //  filteredData = []
        if searchText == "" {
            
            filteredData = data
        } else {
        
        for stuff in data {
            if stuff.lowercased().contains(searchText.lowercased()) {
                
                filteredData.append(stuff)
            }
            }
        }
        self.tableView.reloadData()
    }
    
    
}
