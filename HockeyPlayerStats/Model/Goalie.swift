//
//  Goalie.swift
//  HockeyPlayerStats
//
//  Created by Joe Miehl on 2/20/24.
//

import Foundation

struct Goalie: Decodable {

    var playedId: Int?
    var headshot: String?
    var firstName: FirstName
    var lastName: LastName
    var gamesPlayed: Int?
    var gamesStarted: Int?
    var wins: Int?
    var losses: Int?
    var ties: Int?
    var overtimeLosses: Int?
    var goalsAgainstAverage: Double?
    var savePercentage: Double?
    var shotsAgainst: Int?
    var saves: Int?
    var goalsAgainst: Int?
    var shutouts: Int?
    var goals: Int?
    var assists: Int?
    var points: Int?
    var penaltyMinutes: Int?
    var timeOnIce: Int?
    
   /*
    enum CodingKeys: String, CodingKey {
        case id = "playerId"
        case headshot
        case firstName
        case lastName
        case gamesPlayed
        case gamesStarted
        case wins
        case losses
        case ties
        case overtimeLosses
        case goalsAgainstAverage
        case savePercentage
        case shotsAgainst
        case saves
        case goalsAgainst
        case shutouts
        case goals
        case assists
        case points
        case penaltyMinutes
        case timeOnIce
    }
    */
}
