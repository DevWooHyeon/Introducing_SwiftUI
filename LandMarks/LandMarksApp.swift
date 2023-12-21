//
//  LandMarksApp.swift
//  LandMarks
//
//  Created by Toy on 11/28/23.
//

import SwiftUI

@main
struct LandMarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
