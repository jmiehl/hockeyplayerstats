//
//  PlayerStatsView.swift
//  HockeyPlayerStats
//
//  Created by Joe Miehl on 2/24/24.
//

import SwiftUI

struct PlayerStatsView: View {
    
    var skater: Skater?
    
    var body: some View {
        Text (skater?.firstName.firstName ?? "")
    }
}

#Preview {
    PlayerStatsView()
}
