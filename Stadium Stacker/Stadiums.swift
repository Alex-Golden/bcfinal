//
//  Stadiums.swift
//  Stadium Stacker
//
//  Created by Alex Golden on 12/6/20.
//

import Foundation

class Stadiums {
    
    var stadiumArray: [StadiumInfo] = []
    let urlString = "https://api.collegefootballdata.com/venues"
    var isFetching = false
   
        func getData(completed: @escaping ()->()) {
        // Create a URL
        guard let url = URL(string: urlString) else {
            return
        }
        // Create a Session
        let session = URLSession.shared

        // get data with .dataTask method
        let task = session.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error)
                print("😡 ERROR: \(error.localizedDescription)")
            }
            // deal with the data
            do {
                self.stadiumArray = try JSONDecoder().decode([StadiumInfo].self, from: data!)
                print("\(self.stadiumArray)")
            } catch {
                print(error)
                print("😡 JSON ERROR: \(error.localizedDescription)")
            }
            completed()
        }
        task.resume()
    }
}
