//
//  StaduimInfo.swift
//  Stadium Stacker
//
//  Created by Alex Golden on 12/6/20.
//

import Foundation

struct StadiumInfo: Codable {
    var name: String
    var city: String
    var state: String
    var capacity: Int
    var year_constructed: Int?
    // var grass: Bool
}
