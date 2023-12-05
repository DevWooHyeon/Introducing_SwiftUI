//
//  CategoryHome.swift
//  LandMarks
//
//  Created by Toy on 12/5/23.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modeldata
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(modeldata.categories.keys.sorted(), id: \.self) { key in
                    Text(key)
                }
            }
            .navigationTitle("Featured")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
