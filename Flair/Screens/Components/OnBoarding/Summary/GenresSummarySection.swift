//
//  GenresSummarySection.swift
//  Flair
//
//  Created by Apprenant154 on 11/08/2026.
//


import SwiftUI

/// Affiche les genres favoris sélectionnés
/// durant l'onboarding.
struct GenresSummarySection: View {
    let genres: [Genre]

    private let columns = Array(
        repeating: GridItem(.flexible(), spacing: 8),
        count: 3
    )
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Genres favoris")
                .font(.custom("Archivo-Bold", size: 11))
                .foregroundStyle(.secondary)
                .textCase(.uppercase)

            LazyVGrid(
                columns: columns,
                alignment: .leading,
                spacing: 8
            ) {
                ForEach(genres, id: \.self) { genre in
                    Text(genre.rawValue)
                        .font(.custom("Archivo-Bold", size: 12))
                        .foregroundStyle(.black)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 7)
                        .frame(maxWidth: .infinity)
                        .background(.yellowPrimary)
                        .clipShape(.capsule)
                }
            }
        }
        .frame(
            maxWidth: .infinity,
            alignment: .leading
        )
        .padding(.vertical, 16)
        .padding(.horizontal, 8)
    }
}

#Preview {
    GenresSummarySection(
        genres: [
            .action,
            .drama,
            .romance,
            .scienceFiction
        ]
    )
    .background(Color.card)
    .padding()
    .preferredColorScheme(.dark)
}
