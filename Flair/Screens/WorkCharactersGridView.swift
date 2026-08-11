//
//  WorkCharactersGridView.swift
//  Flair
//
//  Created by imane on 09/08/2026.
//

import SwiftUI

struct WorkCharactersGridView: View {

    let workCharacters: [WorkCharacter]

    let columns = [
        GridItem(.flexible(), spacing: 8),
        GridItem(.flexible(), spacing: 8)
    ]

    var body: some View {

        ScrollView {
            LazyVGrid(
                columns: columns,
                spacing: 24
            ) {
                ForEach(workCharacters) { character in
                    NavigationLink {
                        WorksDetailCharacterView(
                            workCharacter: character
                        )
                    } label: {
                        WorkCharacterCard(
                            workCharacter: character
                        )
                    }
                    .buttonStyle(.plain)
                    .navigationTitle("Personnages")
                }
            }
            .padding(16)
        }
    }
}

#Preview {
    NavigationStack {
        WorkCharactersGridView(workCharacters: works[0].characters)
    }
}
