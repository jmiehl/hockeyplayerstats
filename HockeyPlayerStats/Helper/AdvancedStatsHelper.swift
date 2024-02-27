//
//  AdvancedStatsHelper.swift
//  HockeyPlayerStats
//
//  Created by Joe Miehl on 2/26/24.
//

import Foundation
struct AdvancedStatsHelper {
    
    static func pointsPerSixtyMinutes (avgTimeOnIceL: Double, gamesPlayed: Int, points: Int) -> Double {
        
        let avgTimeOnIce = avgTimeOnIceL
        let gamesPlayed = gamesPlayed
        let points = points
        
        let secondsPlayed = avgTimeOnIce * Double(gamesPlayed)
        let minutesPlayed = secondsPlayed / Double(60)
        let pointsPerMinute = Double(points) / minutesPlayed
        let pointsPerSixty = pointsPerMinute * 60
        
        return pointsPerSixty
    }
}
