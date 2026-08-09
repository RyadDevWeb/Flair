//
//  WorkLocationGridView.swift
//  Flair
//
//  Created by Imane on 09/08/2026.
//

import SwiftUI

struct WorkLocationGridView: View {

    let workLocations: [WorkLocation]

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    var body: some View {

        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(workLocations) { location in
                    WorkLocationCard(workLocation: location)
                }
            }
            .padding(16)
        }
    }
}

#Preview {
    WorkLocationGridView(workLocations: works[0].locations)
}
