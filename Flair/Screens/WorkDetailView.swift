//
//  WorkDetailView.swift
//  flair
//
//  Created by imane on 29/07/2026.
//

import AVKit
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
                WorkDetailButtons()

                MainButton(text: "Explorer l'univers")

                // Description
                WorkDetailDescription(work: work)

                // Saisons / épisodes / films (A FAIRE ‼️)
                HStack(spacing: 24) {

                    WorkDetailCard(
                        nbr: work.nbSeasons,
                        detail: viewModel.seasonFormatted,
                        work: work
                    )

                    WorkDetailCard(
                        nbr: work.nbEpisodes,
                        detail: viewModel.episodeFormatted,
                        work: work
                    )
                }

                // Trailer
                if let url = viewModel.urlFormatted {
                    WorkDetailTitle(text: "Trailer")

                    VideoPlayer(player: AVPlayer(url: url))
                        .frame(height: 206)
                }

                // Plateformes de streamings (SÉPARER LOGIQUE ‼️)
                if !work.streamingPlatforms.isEmpty {

                    WorkDetailTitle(text: "Plateformes de streaming")

                    ScrollView(.horizontal) {

                        HStack(spacing: 12) {

                            ForEach(work.streamingPlatforms, id: \.self) {
                                plateforme in

                                Image(plateforme ?? "")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 58, height: 58)
                                    .padding(.trailing, 25)
                            }
                        }.frame(maxWidth: .infinity)
                    }.scrollIndicators(.hidden)
                }
            }
            .padding(.horizontal, 16)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    WorkDetailView(work: works[0])
}

#Preview {
    WorkDetailView(work: works[3])
}

#Preview {
    WorkDetailView(work: works[4])
}
