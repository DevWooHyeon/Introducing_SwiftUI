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
                modeldata.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modeldata.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modeldata.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
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
