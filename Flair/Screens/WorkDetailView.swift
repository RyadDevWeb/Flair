//
//  WorkDetailView.swift
//  flair
//
//  Created by imane on 29/07/2026.
//

import SwiftUI

struct WorkDetailView: View {

    let work: Work

    private var viewModel: WorkDetailViewModel {
        WorkDetailViewModel(work: work)
    }

    var body: some View {

        ScrollView {

            // Image
            ZStack(alignment: .bottomLeading) {

                WorkDetailImage(work: work)

                WorkTypeBadge(work: work)
                    .padding()
            }
            .ignoresSafeArea()

            VStack(spacing: 24) {

                // Header
                WorkDetailHeader(work: work)
                    .padding(.top, 24)

                // Bouttons
                WorkDetailButtons(work: work)

                MainButton(
                    text: "Explorer l'univers",
                    work : work
                )

                // Description
                WorkDetailDescription(work: work)

                // Saisons / épisodes / films (A FAIRE ‼️)
                HStack(spacing: 24) {

                    WorkDetailCard(
                        nbr: viewModel.primaryDetail.value,
                        detail: viewModel.primaryDetail.label,
                        work: work
                    )
                    
                    WorkDetailCard(
                        nbr: viewModel.secondaryDetail.value,
                        detail: viewModel.secondaryDetail.label,
                        work: work
                    )

                }

                // Trailer
                WorkDetailTrailer(work: work)

                // Plateformes de streamings
                if viewModel.hasStreamingPlatforms {

                    WorkDetailTitle(text: "Plateformes de streaming")

                    ScrollView(.horizontal) {

                        HStack(alignment : .center, spacing: 8) {

                            // Logos plateformes
                            ForEach(work.streamingPlatforms, id: \.self) {
                                plateforme in

                                Image(plateforme ?? "")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 58, height: 58)
                                    .padding(.trailing, 25)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.bottom, 24)
                    }
                    .scrollIndicators(.hidden)
                }
            }
            .padding(.horizontal, 16)
        }
        .ignoresSafeArea()
        .scrollIndicators(.hidden)
    }
}

#Preview {
    NavigationStack {
        WorkDetailView(work: works[0])
    } .navigationTitle("Explorer mon univers")
}

#Preview {
    NavigationStack {
        WorkDetailView(work: works[1])
    } .navigationTitle("Explorer mon univers")
}

#Preview {
    NavigationStack {
        WorkDetailView(work: works[2])
    } .navigationTitle("Explorer mon univers")
}

#Preview {
    NavigationStack {
        WorkDetailView(work: works[3])
    } .navigationTitle("Explorer mon univers")
}

#Preview {
    NavigationStack {
        WorkDetailView(work: works[4])
    } .navigationTitle("Explorer mon univers")
}
