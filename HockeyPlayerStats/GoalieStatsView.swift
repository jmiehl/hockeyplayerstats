//
//  GoalieStatsView.swift
//  HockeyPlayerStats
//
//  Created by Joe Miehl on 2/24/24.
//

import SwiftUI

struct GoalieStatsView: View {
    var goalie: Goalie?
    
    var body: some View {
        Text (goalie?.firstName.firstName ?? "")
    }
}

#Preview {
    GoalieStatsView()
}
