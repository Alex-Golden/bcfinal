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
    var filteredStadiumArray: [StadiumInfo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        
        stadiums.getData {
            DispatchQueue.main.async {
                self.filteredStadiumArray = self.stadiums.stadiumArray
                self.tableView.reloadData()
            }
        }
   //     passData()
    }
//    func passData() {
//        for indexPath in 0..<stadiums.stadiumArray.count {
//            data.append(stadiums.stadiumArray[indexPath].name)
//        }
//
//        // filteredData = data
//        //print(filteredData)
//    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // print(filteredData.count)
    //    passData()
        return filteredStadiumArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   //     passData()
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
//        cell.textLabel?.text = data[indexPath.row]
        cell.textLabel?.text = filteredStadiumArray[indexPath.row].name
        cell.detailTextLabel?.text = "\(filteredStadiumArray[indexPath.row].capacity)"
        //    print(indexPath.count)
        return cell
    }
    
    
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowInfo2" {
            let destination = segue.destination as! StadiumInfoViewController
            let selectedIndexPath = tableView.indexPathForSelectedRow!
            destination.stadiumInfo = filteredStadiumArray[selectedIndexPath.row]
        }
    }
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        var filteredStruct: [StadiumInfo] = []
        if searchText == "" {
       //     passData()
            filteredStruct = stadiums.stadiumArray
        } else {
       //     passData()
            for stuff in stadiums.stadiumArray {
                if stuff.name.lowercased().contains(searchText.lowercased()) {
                    
                    filteredStruct.append(stuff)
                }
            }
        }
        filteredStadiumArray = filteredStruct
        self.tableView.reloadData()
        
//        filteredData = []
//        if searchText == "" {
//            passData()
//            filteredData = data
//        } else {
//            passData()
//            for stuff in data {
//                if stuff.lowercased().contains(searchText.lowercased()) {
//
//                    filteredData.append(stuff)
//                }
//            }
//        }
//        data = filteredData
//        self.tableView.reloadData()
    }
}
