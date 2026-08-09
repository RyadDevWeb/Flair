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
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    var body: some View {

        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(workCharacters) { character in
                    WorkCharacterCard(workCharacter: character)
                }
            }
            .padding(16)
        }
    }
}

#Preview {
    WorkCharactersGridView(workCharacters : works[0].characters)
}
