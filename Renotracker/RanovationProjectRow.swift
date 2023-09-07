//
//  RanovationProjectRow.swift
//  Renotracker
//
//  Created by Farnaz Rismanchian on 07/09/2023.
//

import SwiftUI

struct RanovationProjectRow: View {
    var body: some View {
        VStack{
            HStack(alignment: .top){
                Image("front-lobby")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fill)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                VStack(alignment: .leading) {
                    Text("Front Lobby")
                        .font(.headline)
                    VStack(alignment: .leading){
                        Label("Due on Aug 1, 2021", systemImage: "calendar")
                        Label("5 items", systemImage: "wrench.and.screwdriver.fill")
                        Label("60% complete", systemImage: "percent")
                        Label("On budget", systemImage: "dollarsign.circle")
                    }
                    .font(.callout)
                    .foregroundColor(.accentColor)
                }
            }
            Spacer()
        }.padding(.trailing)
    }
}

struct RanovationProjectRow_Previews: PreviewProvider {
    static var previews: some View {
        RanovationProjectRow()
    }
}
