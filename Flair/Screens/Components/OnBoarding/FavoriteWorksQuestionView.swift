//
//  FavoriteWorksQuestionView.swift
//  Flair
//
//  Created by Apprenant154 on 11/08/2026.
//


import SwiftUI

struct FavoriteWorksQuestionView: View {
    @Environment(AppStore.self) private var appStore

    private let columns = Array(
        repeating: GridItem(.flexible(), spacing: 12),
        count: 2
    )

    private var viewModel: FavoriteWorksQuestionViewModel {
        FavoriteWorksQuestionViewModel(
            works: appStore.works,
            onboarding: appStore.onboarding
        )
    }

    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: columns,
                spacing: 16
            ) {
                ForEach(viewModel.works) { work in
                    Button {
                        viewModel.select(work)
                    } label: {
                        FavoriteWorkCardView(
                            work: work,
                            isSelected: viewModel.isSelected(work)
                        )
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    FavoriteWorksQuestionView()
        .environment(AppStore(works: works, user: user))
        .preferredColorScheme(.dark)
}
