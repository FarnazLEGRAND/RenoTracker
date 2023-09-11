//
//  RenotrackerApp.swift
//  Renotracker
//
//  Created by Farnaz Rismanchian on 06/09/2023.
//

import SwiftUI

@main
struct RenoTrackerApp: App {
    
    private var renovationProjectDataManager = RenovationProjectDataManager() // load data from JSON
    @State private var renovationProjects = [RenovationProject]()
    
    var body: some Scene {
        WindowGroup {
            RenovationProjectsView(renovationProjects: $renovationProjects)
                .onAppear(perform: {
                    renovationProjectDataManager.load{ renovationProjects in
                        self.renovationProjects = renovationProjects
                    }
                })
        }
    }
}
