//
//  Skater.swift
//  HockeyPlayerStats
//
//  Created by Joe Miehl on 2/20/24.
//

import Foundation

struct Skater: Decodable {
    var playerId: Int?
    var headshot: String?
    var firstName = FirstName()
    var lastName = LastName()
    var positionCode: String?
    var gamesPlayed: Int?
    var goals: Int?
    var assists: Int?
    var points: Int?
    var plusMinus: Int?
    var penaltyMinutes: Int?
    var powerPlayGoals: Int?
    var shortHandedGoals: Int?
    var shots: Int?
    var shootingPctg: Double?
    var avgTimeOnIcePerGame: Double?
    var avgShiftsPerGame: Double?
    var faceOffWinPctg: Double?
    
    /*
    enum CodingKeys: String, CodingKey {
        case id = "playerId"
        case headshot
        case firstName
        case lastName
        case positionCode
        case gamesPlayed
        case goals
        case assists
        case points
        case plusMinus
        case penaltyMinutes
        case powerPlayGoals
        case shortHandedGoals
        case shots
        case shootingPctg
        case avgTimeOnIcePerGame
        case avgShiftsPerGame
        
    }
    */
}


struct FirstName: Decodable {
    var firstName: String?
    
    
    enum CodingKeys: String, CodingKey {
        case firstName = "default"
    }
}

struct LastName: Decodable {
    var lastName: String?
    
    enum CodingKeys: String, CodingKey {
        case lastName = "default"
    }
}
