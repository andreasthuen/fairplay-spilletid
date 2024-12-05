//
//  Match.swift
//  spilletid-app
//
//  Created by Andreas Thuen on 05/12/2024.
//

import Foundation

struct PlayerMatch {
    
    var title: String
    var elapsedTime: TimeInterval
    var currentlyPlaying: Bool
    var player: Player
    var match: Match
        
    
}




extension PlayerMatch {
    static let sampleData: [PlayerMatch] =
    [
        PlayerMatch(title: "test1", elapsedTime: TimeInterval(220), currentlyPlaying: true, player: Player.sampleData[1], match: Match.sampleData[0]),
        PlayerMatch(title: "test2", elapsedTime: TimeInterval(260), currentlyPlaying: true, player: Player.sampleData[2], match: Match.sampleData[0]),
        PlayerMatch(title: "test3", elapsedTime: TimeInterval(150), currentlyPlaying: true, player: Player.sampleData[0], match: Match.sampleData[0])
    ]
}


