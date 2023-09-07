//
//  ContentView.swift
//  Renotracker
//
//  Created by Farnaz Rismanchian on 06/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading){
            //            mark:header section
            VStack(alignment: .leading){
                Text("Frint Lobby")
                    .font(.largeTitle)
                
//                Text("<<<Photo placehodore>>>")
                Image("front-lobby")
//                    .frame(width: 360, height: 300)
                    .resizable()
                    .scaledToFit()
//                    .clipped()
            }
            // MARK: Status section
                      VStack{
                          Text("Due on Sunday, August 1, 2023")
                          ProgressView(value: 0.6)
                          Text("60% Complete")
                          Text("Work Quality : Good")
                          HStack{
                              Image(systemName: "star.fill")
                              Image(systemName: "star.fill")
                              Image(systemName: "star.fill")
                              Image(systemName: "star.fill")
                              Image(systemName: "star")
                          }.foregroundColor(.yellow)

                          Text("FLAGGED FOR REVIEW")
                      }
                      
                      Divider()
                      
                      // MARK: Punch List section
                      VStack(alignment: .leading){
                          Text("Punch List")
                              .font(.headline)
                              .foregroundColor(.accentColor)
                          Label("Remodel front desk",systemImage: "checkmark.circle")
                          Label("Retile entry",systemImage: "checkmark.circle")
                          Label("Replace Light fixtures",systemImage: "checkmark.circle")
                          Label("Paint walls", systemImage: "asterisk.circle")
                          Label("Hang new artWork",systemImage: "circle")
                      }
                      // MARK: Budget section
                      VStack(alignment: .leading){
                          Text("Budget")
                              .font(.headline)
                              .foregroundColor(.accentColor)
                          
                          HStack{
                              Text("Amount Allocated: ")
                              Spacer()
                              Text("$15,000")
                          }
                          HStack{
                              Text("Spent to-date: ")
                              Spacer()
                              Text("$8,350")
                          }
                          HStack{
                              Text("Amount remaining: ")
                              Spacer()
                              Text("$6,660")
                          }
                      }
            Spacer()
                  }
        .padding()
    }
}


//contene VIEUW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
    }
}
