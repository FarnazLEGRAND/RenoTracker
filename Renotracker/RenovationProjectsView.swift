//
//  RenovationProjectView.swift
//  Renotracker
//
//  Created by Farnaz Rismanchian on 07/09/2023.
//
//cela notre main pour demarer le system :dans le main
//liste element hame liste row tek doune project
import SwiftUI

struct RenovationProjectsView: View {
    
    var renovationProjects: [RenovationProject]
    
    var body: some View {
        NavigationView{
            List{
                NavigationLink(
                    destination: DetailView(renovationProject: renovationProjects[0]),
                    label: { RenovationProjectRow(renovationProject: renovationProjects[0]) })
            }
            .navigationTitle("Home")
        }
    }
}

struct RenovationProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        RenovationProjectsView(renovationProjects: RenovationProject.testData)
    }
}
