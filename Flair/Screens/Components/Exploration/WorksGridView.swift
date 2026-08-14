//
//  WorksGridView.swift
//  Flair
//
//  Created by Apprenant154 on 12/08/2026.
//


import SwiftUI

struct WorksGridView: View {

    @Environment(AppStore.self) private var appStore

    let title: String
    let works: [Work]

    @State private var viewModel = ExplorationViewModel()

    var body: some View {

        @Bindable var viewModel = viewModel

        let visibleWorks = viewModel.visibleWorks(
            from: works,
            user: appStore.user
        )

        ScrollView {
            ExplorationWorksGridContentView(
                works: visibleWorks
            )
            .padding(16)
        }
        .background(
            Color.bg
                .ignoresSafeArea()
        )
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(
                placement: .topBarTrailing
            ) {
                Button {
                    viewModel.isFilterPresented = true
                } label: {
                    Image(
                        systemName:
                            "line.3.horizontal.decrease"
                    )
                }
                .tint(.yellowPrimary)
            }
        }
        .sheet(
            isPresented: $viewModel.isFilterPresented
        ) {
            ExplorationFilterSheet(
                viewModel: viewModel
            )
            .presentationDetents([
                .medium,
                .large
            ])
            .presentationDragIndicator(.visible)
        }
    }
}


/// Grille réutilisable de deux œuvres par ligne.
struct ExplorationWorksGridContentView: View {

    let works: [Work]

    private let columns = [
        GridItem(
            .flexible(),
            spacing: 12
        ),
        GridItem(
            .flexible(),
            spacing: 12
        )
    ]

    var body: some View {
        if works.isEmpty {
            ContentUnavailableView(
                "Aucune œuvre",
                systemImage:
                    "rectangle.stack.badge.xmark",
                description: Text(
                    "Aucune œuvre ne correspond aux filtres."
                )
            )
        } else {
            LazyVGrid(
                columns: columns,
                spacing: 12
            ) {
                ForEach(works) { work in
                    NavigationWorkCardView(
                        work: work
                    )
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ScrollView {
            ExplorationWorksGridContentView(works: works)
        }
    }
}
