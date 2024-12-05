//
//  Match.swift
//  spilletid-app
//
//  Created by Andreas Thuen on 05/12/2024.
//

import Foundation

struct Match {
    
    var title: String
    var startTime: Date
    var endTime: Date
    var totalTime: TimeInterval
    var elapsedTime: TimeInterval

}


extension Match {
    static let sampleData: [Match] =
    [
        Match(title: "Første kamp",
              startTime: Date.now,
              endTime: Date.now+TimeInterval(720),
              totalTime: TimeInterval(720),
              elapsedTime: TimeInterval(200)
               ),
        Match(title: "Andre kamp",
              startTime: Date.now+TimeInterval(1440),
              endTime: Date.now+TimeInterval(2160),
              totalTime: TimeInterval(720),
              elapsedTime: TimeInterval(500)
               ),
        Match(title: "Tredje kamp",
              startTime: Date.now+TimeInterval(2500),
              endTime: Date.now+TimeInterval(3220),
              totalTime: TimeInterval(720),
              elapsedTime: TimeInterval(350)
               ),

    ]
}


