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

    var body: some View {
            
           VStack {
               HStack{
                       Text(match.title)
                       .padding()
                       Button("Start") {
                           /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                       }
                       .padding()
                       Button("Stop") {
                           /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                       }
                       .padding()
                       Button("Pause") {
                           /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                       }
                       .padding()
                       .background()
                   
                   //     Text(String(match.startTime))
                
               }
                   
               
               ProgressView(value: match.elapsedTime, total: match.totalTime)
               HStack {
                   VStack(alignment: .leading) {
                       Text("Seconds Elapsed")
                           .font(.caption)
                       Label(String(match.elapsedTime), systemImage: "hourglass.tophalf.fill")
                   }
                   Spacer()
                   VStack(alignment: .trailing) {
                       Text("Seconds Remaining")
                           .font(.caption)
                       Label(String(match.totalTime-match.elapsedTime), systemImage: "hourglass.bottomhalf.fill")
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
        MatchView(match: Match.sampleData[0])
    }
}
