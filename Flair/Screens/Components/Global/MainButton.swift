//
//  MainButton.swift
//  Flair
//
//  Created by imane on 07/08/2026.
//

import SwiftUI

struct MainButton: View {

    var text: String
    let work: Work

    var body: some View {

        NavigationLink {
            WorkTableView(
                work: work
            )
        } label: {
            Text(text)
        }
        .buttonStyle(.primary)
    }
}

#Preview {
    NavigationStack {
        MainButton(
            text: "Explorer l'univers",
            work: works[0]
        )
    }.navigationTitle("Explorer mon univers")
}
