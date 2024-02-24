//
//  ContentView.swift
//  HockeyPlayerStats
//
//  Created by Joe Miehl on 2/20/24.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var query: String = ""
    var service = DataService()
   
    var body: some View {
        VStack{
            Text("hello world")
           // List (skaters) { b in
                //Text(b.firstName.firstName ?? "NIL")
                
            }
        .padding()
        .task {
            await service.hockeyPlayerSearch()
          
        }
    }
}

#Preview {
    ContentView()
}
