//
//  WorkCharacterCard.swift
//  Flair
//
//  Created by imane on 09/08/2026.
//

import SwiftUI

struct WorkCharacterCard: View {

    let workCharacter: WorkCharacter

    var body: some View {

        // Image
        Image(workCharacter.cover)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
            .frame(height: 260)
            .clipped()

            // bordure + opacité
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.borderCard, lineWidth: 0.5)
                Color.black.opacity(0.4)
            }

            // nom + résumé
            .overlay(alignment: .bottomLeading) {
                VStack(alignment: .leading, spacing: 8) {

                    // nom
                    Text(workCharacter.name)
                        .font(.custom("Archivo-Black", size: 20))
                        .lineLimit(1)

                    // résumé
                    Text(workCharacter.summary)
                        .font(.footnote)
                        .lineLimit(2)
                }
                .foregroundStyle(.textPrimary)
                .padding()
            }
    }
}

#Preview {
    WorkCharacterCard(workCharacter: works[0].characters[0])
}

#Preview {
    WorkCharacterCard(workCharacter: works[1].characters[3])
}

#Preview {
    WorkCharacterCard(workCharacter: works[2].characters[3])
}

#Preview {
    WorkCharacterCard(workCharacter: works[3].characters[3])
}

#Preview {
    WorkCharacterCard(workCharacter: works[4].characters[3])
}
