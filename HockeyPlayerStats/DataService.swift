//
//  DataService.swift
//  HockeyPlayerStats
//
//  Created by Joe Miehl on 2/20/24.
//

import Foundation

struct DataService {
    
 
    
    
    func hockeyPlayerSearch() async -> [Skater] {
        
        //1. create url
        let url = URL(string: "https://api-web.nhle.com/v1/club-stats/nyr/20232024/2")
        
        let request = URLRequest(url: url!)
        
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            
            print (response)
            let decoder = JSONDecoder()
            let result = try decoder.decode(HockeyPlayerSearch.self, from: data)
          
            return (result.skaters)
        }
        catch {
            print(error)
            return []
        }
    }
    
    func goaliePlayerSearch() async -> [Goalie] {
        
        //1. create url
        let url = URL(string: "https://api-web.nhle.com/v1/club-stats/nyr/20232024/2")
        
        let request = URLRequest(url: url!)
        
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            
            print (response)
            let decoder = JSONDecoder()
            let result = try decoder.decode(HockeyPlayerSearch.self, from: data)
            print(result.goalies)
            return (result.goalies)
        }
        catch {
            print(error)
            return []
        }
    }
}
