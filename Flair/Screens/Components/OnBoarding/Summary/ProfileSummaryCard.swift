//
//  ProfileSummaryCard.swift
//  Flair
//
//  Created by Apprenant154 on 11/08/2026.
//


//
//  ProfileSummaryCard.swift
//  Flair
//
//  Created by Apprenant154 on 11/08/2026.
//

import SwiftUI

/// Affiche l'identité choisie par l'utilisateur
/// durant l'onboarding.
struct ProfileSummaryCard: View {
    let character: WorkCharacter

    var body: some View {
        HStack(spacing: 16) {
            Image(character.identityImage)
                .resizable()
                .scaledToFill()
                .frame(width: 84, height: 84)
                .clipped()
                .clipShape(.circle)

            VStack(alignment: .leading, spacing: 6) {
                Text("Ton identité")
                    .font(.custom("Archivo-Bold", size: 11))
                    .foregroundStyle(.secondary)
                    .textCase(.uppercase)

                Text(character.name)
                    .font(.custom("Archivo-Black", size: 26))
                    .textCase(.uppercase)

                Label(
                    "Profil prêt",
                    systemImage: "checkmark.circle.fill"
                )
                .font(.custom("Archivo-Bold", size: 12))
                .foregroundStyle(.yellowPrimary)
            }

            Spacer()
        }
        .padding(16)
        .background(Color.card)
        .clipShape(
            RoundedRectangle(
                cornerRadius: 16,
                style: .continuous
            )
        )
        .overlay(alignment: .leading) {
            Capsule()
                .fill(.yellowPrimary)
                .frame(width: 4)
                .padding(.vertical, 16)
        }
    }
}

#Preview {
    ProfileSummaryCard(
        character: works[0].characters[0]
    )
    .padding()
    .preferredColorScheme(.dark)
}
