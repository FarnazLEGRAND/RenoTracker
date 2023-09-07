//
//  RenovationProjectView.swift
//  Renotracker
//
//  Created by Farnaz Rismanchian on 07/09/2023.
//
//cela notre main pour demarer le system
import SwiftUI

struct RenovationProjectsView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(
                    destination: DetailView(),
                    label: {
                        //                        Text ("Reno 1" )
                        RanovationProjectRow()
                    }
                )
                
                RanovationProjectRow()
                RanovationProjectRow()
                RanovationProjectRow()
            
            }
            .navigationTitle("Homme")
        }
    }
}
    
    struct RenovationProjectsView_Previews: PreviewProvider {
        static var previews: some View {
            RenovationProjectsView()
        }
    }
