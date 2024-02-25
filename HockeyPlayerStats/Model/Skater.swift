//
//  Skater.swift
//  HockeyPlayerStats
//
//  Created by Joe Miehl on 2/20/24.
//

import Foundation

struct Skater: Decodable, Identifiable {
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
    var id: Int? {playerId}
    

}


struct FirstName: Decodable {
    var firstName: String?
    
    
    enum CodingKeys: String, CodingKey {
        case firstName = "default"
    }
}

struct LastName: Decodable {
    var lastName: String?
    var cs: String?
    var sk: String?
    
    enum CodingKeys: String, CodingKey {
        case lastName = "default"
        case cs
        case sk
    }
}
