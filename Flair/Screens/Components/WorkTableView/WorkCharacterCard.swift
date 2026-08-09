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

        Image(workCharacter.cover)
            .resizable()
            .frame(height: 260)
            .clipShape(.rect(cornerRadius: 8))
            .overlay {
                Color.black.opacity(0.8)
            }
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.borderCard, lineWidth: 0.5)
            }
            .overlay(alignment: .bottomLeading) {
                VStack(alignment: .leading, spacing: 8) {
                    Text(workCharacter.name)
                        .font(.custom("Archivo-Black", size: 20))
                        .foregroundStyle(.textPrimary)
                        .lineLimit(1)
                    
                    Text(workCharacter.summary)
                        .font(.footnote)
                        .foregroundStyle(.textSecondary)
                        .lineLimit(2)
                }
                .padding()

            }
            .frame(maxWidth: 213)

    }
}

#Preview {
    WorkCharacterCard(workCharacter: works[0].characters[0])
}
