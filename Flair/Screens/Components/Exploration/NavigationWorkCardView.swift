//
//  ExplorationWorkCardView.swift
//  Flair
//
//  Created by Apprenant154 on 12/08/2026.
//

import SwiftUI

struct NavigationWorkCardView: View {

    let work: Work

    var body: some View {
        NavigationLink {
            WorkDetailView(work: work)
        } label: {
            WorkCardComponentView(work: work)
        }
    }
}

#Preview {
    NavigationStack {
        NavigationWorkCardView(work: works[1])
    }
}
