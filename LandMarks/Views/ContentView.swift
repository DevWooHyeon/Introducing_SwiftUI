//
//  ContentView.swift
//  LandMarks
//
//  Created by Toy on 11/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}


#Preview {
    ContentView()
        .environment(ModelData())
}
