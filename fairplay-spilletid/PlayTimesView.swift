//
//  playTimesView.swift
//  fairplay-spilletid
//
//  Created by Andreas Thuen on 05/12/2024.
//

import SwiftUI

struct PlayTimesView: View {
    let playTimes: [PlayerMatch]
    
    var body: some View {
        List(playTimes, id: \.title ){ playTime in
            PlayTimeView(playerMatch: playTime )
        }
    }
}


struct PlayTimesView_Previews: PreviewProvider {
    static var previews: some View {
        PlayTimesView(playTimes: PlayerMatch.sampleData)
    }
}

