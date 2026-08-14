//
//  DiscoverShuffleView.swift
//  flair
//
//  Created by Louis on 29/07/2026.
//

import SwiftUI

struct DiscoverShuffleView: View {

    var discoverShuffleViewModel: DiscoverShuffleViewModel {
        DiscoverShuffleViewModel(selectedType: $selectedType)
    }
    var workDetailViewModel: WorkDetailViewModel {
        WorkDetailViewModel(work: shuffleWork ?? works[0])
    }
    @State var selectedType: Types = .anime
    @State var selectedGenre: Genre = .action
    @State private var isTouch: Bool = false

    @State private var shuffleWork: Work?

    let text: String = "Découvrir une oeuvre"

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 24) {
                HStack {
                    WorkQuoteBar()
                    Text("Découvrir")
                }
                    .font(Font.custom("Archivo-Black", size: 34))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)

                VStack(spacing: 8) {
//                    ExplorationPickerType(selectedType: $selectedType)
//                    ExplorationPickerGenre(selectedGenre: $selectedGenre)
                }

                VStack {
                    Spacer()
                    if let shuffleWork {
                        NavigationLink {
                            WorkDetailView(work: shuffleWork)
                        } label: {
                            Image(shuffleWork.image)
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .overlay {
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(.white, lineWidth: 0.5)
                                }
                                .overlay(alignment: .topTrailing) {
                                    WorkTypeBadge(work: shuffleWork)
                                        .padding()
                                }
                                .padding(.bottom, 28)

                        }
                    } else {
                        Text("Aucune œuvre ne correspond à ce filtre")
                            .foregroundStyle(.gray)
                    }
                    Spacer()
                }.frame(maxWidth: .infinity, maxHeight: .infinity)

                Button {
                    isTouch.toggle()
                    let filteredWorks = discoverShuffleViewModel.filteredWorks(
                        selectedType: selectedType,
                        selectedGenre: selectedGenre
                    )
                    shuffleWork = filteredWorks.randomElement()
                } label: {
                    Text(text)
                }
                .font(.title3.bold())
                .foregroundStyle(Color.bg)
                .frame(maxWidth: 300)
                .frame(height: 56)
                .background {
                    discoverShuffleViewModel.colorPicker(type: selectedType)
                }
                .clipShape(.rect(cornerRadius: 8))
            }
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    ZStack {
        NavigationStack {
            DiscoverShuffleView(selectedType: .anime, selectedGenre: .action)
        }
    }

}
