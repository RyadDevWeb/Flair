//
//  ExplorationCharacterSectionView.swift
//  Flair
//
//  Created by Apprenant154 on 12/08/2026.
//

import SwiftUI

struct ExplorationCharacterSectionView: View {

    let characters: [WorkCharacter]

    var body: some View {
        if !characters.isEmpty {
            VStack(
                alignment: .leading,
                spacing: 12
            ) {

                HStack(alignment: .bottom) {
                    HStack(spacing: 8) {

                        RoundedRectangle(
                            cornerRadius: 2
                        )
                        .fill(.yellowPrimary)
                        .frame(width: 4)
//                        .frame(height: 36)

                        VStack(
                            alignment: .leading,
                            spacing: 0
                        ) {
                            Text("Personnages du jour")
                                .font(
                                    .custom(
                                        "Archivo-Black",
                                        size: 22
                                    )
                                )

                            Text(
                                "Découvrez des personnages inspirants."
                            )
                            .font(.system(size: 13))
                            .foregroundStyle(
                                .textSecondary
                            )
                        }
                    }

                    Spacer()

                    NavigationLink {
                        CharactersGridView(
                            characters: characters
                        )
                    } label: {
                        Text("voir plus")
                            .font(
                                .system(
                                    size: 13,
                                    weight: .heavy
                                )
                            )
                            .foregroundStyle(
                                .yellowPrimary
                            )
                    }
                }

                ScrollView(.horizontal) {
                    LazyHStack(spacing: 12) {
                        ForEach(
                            Array(characters.prefix(8))
                        ) { character in

                            ExplorationCharacterCardView(
                                character: character
                            )
                            .frame(width: 176)
                        }
                    }
                }
                .scrollIndicators(.hidden)
            }
        }
    }
}

#Preview {
    NavigationStack {
        ExplorationCharacterSectionView(characters: works[1].characters)
    }
}


