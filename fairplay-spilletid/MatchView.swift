//
//  MatchView.swift
//  fairplay-spilletid
//
//  Created by Andreas Thuen on 05/12/2024.
//

//
//  ContentView.swift
//  spilletid-app
//
//  Created by Andreas Thuen on 02/12/2024.
//

import SwiftUI
struct MatchView: View {
    let match: Match
    @State private var playing = false;

    var body: some View {
            
           VStack {
               HStack{
                   Text(playerMatch.player.name)
                   Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                       /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("Label")/*@END_MENU_TOKEN@*/
                   }
               }
                   
               
               ProgressView(value: playerMatch.elapsedTime, total: playerMatch.match.totalTime)
               HStack {
                   VStack(alignment: .leading) {
                       Text("Seconds Elapsed")
                           .font(.caption)
                       Label(String(playerMatch.elapsedTime), systemImage: "hourglass.tophalf.fill")
                   }
                   Spacer()
                   VStack(alignment: .trailing) {
                       Text("Seconds Remaining")
                           .font(.caption)
                       Label(String(playerMatch.match.totalTime-playerMatch.match.elapsedTime), systemImage: "hourglass.bottomhalf.fill")
                   }
               }
               .accessibilityElement(children: .ignore)
               .accessibilityLabel("Time remaining")
               .accessibilityValue("10 minutes")
           }
           .padding()
       }
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        PlayTimeView(playerMatch: PlayerMatch.sampleData[0])
    }
}
