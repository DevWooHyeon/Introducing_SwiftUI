//
//  LandmarkList.swift
//  LandMarks
//
//  Created by Toy on 12/1/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
