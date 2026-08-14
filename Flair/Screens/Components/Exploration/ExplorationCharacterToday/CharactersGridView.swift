//
//  CharactersGridView.swift
//  Flair
//
//  Created by Apprenant154 on 12/08/2026.
//

import SwiftUI

struct CharactersGridView: View {

    let characters: [WorkCharacter]

    private let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: columns,
                spacing: 12
            ) {
                ForEach(characters) { character in
                    ExplorationCharacterCardView(
                        character: character
                    )
                }
            }
            .padding(16)
        }
        .background(
            Color.bg
                .ignoresSafeArea()
        )
        .navigationTitle("Personnages du jour")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        CharactersGridView(characters: works[1].characters)
    }
}
