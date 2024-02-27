//
//  PointsPerGameHelper.swift
//  HockeyPlayerStats
//
//  Created by Joe Miehl on 2/26/24.
//

import Foundation

struct PointsPerGameHelper {
    
    static func pointsPerGame(gamesplayed: Int, points: Int) -> Double {
        let pPG = Double(points) / Double(gamesplayed)
        print(gamesplayed)
        print(points)
        print ("\(Float(pPG))")
        return pPG
        
    }
}
