//
//  HockeyPlayerSearch.swift
//  HockeyPlayerStats
//
//  Created by Joe Miehl on 2/20/24.
//

import Foundation
struct HockeyPlayerSearch: Decodable {
    var season: String?
    var gameType: Int?
    var skaters = [Skater]()
    var goalies = [Goalie]()
}
