//
//  ContentView.swift
//  HockeyPlayerStats
//
//  Created by Joe Miehl on 2/20/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var skaters = [Skater]()
    @State var goalies = [Goalie]()
    @State var query: String = ""
    @State var selectedSkater: Skater?
    @State var selectedGoalie: Goalie?
    var service = DataService()
    
    var body: some View {
        VStack{
            HStack{
                TextField ("Which teams stats?", text: $query)
                    .textFieldStyle(.roundedBorder)
                Button {
                    //TODO: implement query
                } label: {
                    Text("Go")
                        .padding(.horizontal)
                        .padding(.vertical, 10)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            VStack(alignment: .center) {
                Text ("Skaters")
                    .font(.title)
                    .padding(.horizontal)
                List (skaters) { b in
                    
                    Text("\(b.firstName.firstName ?? "NIL") \(b.lastName.lastName ?? "NIL")")
                        .onTapGesture {
                            selectedSkater = b
                        }
                    
                }
            }.frame(height: 450)
            
            VStack(alignment: .center) {
                Text ("Goalies")
                    .font(.title)
                    .padding(.horizontal)
                List (goalies) { b in
                    Text("\(b.firstName.firstName ?? "NIL") \(b.lastName.lastName ?? "NIL")")
                        .onTapGesture {
                            selectedGoalie = b
                        }
                }
            }
            
        }
        .padding()
        .task {
            skaters =  await service.hockeyPlayerSearch()
            goalies = await service.goaliePlayerSearch()
            
        }
        .sheet(item: $selectedSkater) { item in
            PlayerStatsView(skater: item)}
        .sheet(item: $selectedGoalie) { item in
            GoalieStatsView(goalie: item)}
        
    }
}

#Preview {
    ContentView()
}
