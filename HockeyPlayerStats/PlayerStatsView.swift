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
        VStack (spacing: 0) {
            ZStack{
                Rectangle()
                    .foregroundStyle(.gray)
                Image("player-placeholder-image")
                    .resizable()
                
            }
            .frame(width: 250, height: 200)
            
            ZStack {
                Rectangle()
                    .foregroundStyle(.blue)
                Text("\(skater?.firstName.firstName ?? "") \(skater?.lastName.lastName ?? "")")
                    .bold()
                    .foregroundStyle(.white)
            }
            .frame(height: 40)
            
            ScrollView  {
                VStack {
                    HStack {
                        VStack(alignment: .leading){
                            Text("Position: \(skater?.positionCode ?? "")")
                            Text("Games Played: \(skater?.gamesPlayed ?? 0)")
                            Text("Goals: \(skater?.goals ?? 0)")
                            Text("Assists: \(skater?.assists ?? 0)")
                            Text("Points: \(skater?.points ?? 0)")
                            Text("Plus/Minus: \(skater?.plusMinus ?? 0)")
                            Text("Shifts per game: \(String(format:"%.2f",(skater?.avgShiftsPerGame ?? 0)))")
                            Spacer()
                        }
                        Spacer()
                    }.padding(.top)
                }.padding(.horizontal)
                
                    ZStack {
                        Rectangle()
                            .foregroundStyle(.blue)
                        Text("Advanced Stats")
                            .bold()
                            .foregroundStyle(.white)
                    }
                    .frame(height: 40)
                
                VStack {
                    HStack {
                        VStack(alignment: .leading){
                            Text("Points Per Game: \(String(format:"%.2f",(PointsPerGameHelper.pointsPerGame(gamesplayed: skater?.gamesPlayed ?? 0, points: skater?.points ?? 0))))")
                            Text("Points Per 60 Min: \(String(format:"%.2f",(AdvancedStatsHelper.pointsPerSixtyMinutes(avgTimeOnIceL: skater?.avgTimeOnIcePerGame ?? 0, gamesPlayed: skater?.gamesPlayed ?? 0, points: skater?.points ?? 0))))")
                            Text("Goals: \(skater?.goals ?? 0)")
                            Text("Assists: \(skater?.assists ?? 0)")
                            Text("Points: \(skater?.points ?? 0)")
                            Text("Plus/Minus: \(skater?.plusMinus ?? 0)")
                            Text("Shifts per game: \(String(format:"%.2f",(skater?.avgShiftsPerGame ?? 0)))")
                            Spacer()
                        }
                        Spacer()
                    }
                    .padding(.top)
                }
                .padding(.horizontal)
            }
        
        }
    }
}

#Preview {
    PlayerStatsView()
}
