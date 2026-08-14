//
//  ExplorationWorkCardView.swift
//  Flair
//
//  Created by Apprenant154 on 13/08/2026.
//
import SwiftUI

struct ExplorationWorkCardView: View {

    let work: Work

    var body: some View {
        NavigationLink {
            WorkDetailView(work: work)
        } label: {
            NavigationWorkCardView(work: work)
        }
        .buttonStyle(.plain)
    }
}
