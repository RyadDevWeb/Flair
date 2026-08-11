//
//  WorksSummarySection.swift
//  Flair
//
//  Created by Apprenant154 on 11/08/2026.
//

import SwiftUI

/// Affiche les œuvres favorites sélectionnées
/// durant l'onboarding.
struct WorksSummarySection: View {
    let works: [Work]

    private var workCount: String {
        switch works.count {
        case 0:
            return "Aucune œuvre sélectionnée"

        case 1:
            return "1 œuvre sélectionnée"

        default:
            return "\(works.count) œuvres sélectionnées"
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                VStack(alignment: .leading, spacing: 6) {
                    Text("Œuvres favorites")
                        .font(.custom("Archivo-Bold", size: 11))
                        .foregroundStyle(.secondary)
                        .textCase(.uppercase)

                    Text(workCount)
                        .font(.custom("Archivo-Black", size: 17))
                }

                Spacer()

                if !works.isEmpty {
                    Image(systemName: "heart.fill")
                        .foregroundStyle(.yellowPrimary)
                }
            }

            if works.isEmpty {
                Text(
                    "Tu pourras en ajouter plus tard depuis l'application."
                )
                .font(.custom("Archivo-Regular", size: 12))
                .foregroundStyle(.secondary)
            } else {
                HStack(spacing: 8) {
                    ForEach(
                        Array(works.prefix(3))
                    ) { work in
                        Image(work.image)
                            .resizable()
                            .scaledToFill()
                            .frame(
                                width: 80,
                                height: 124
                            )
                            .aspectRatio(contentMode: .fit)
                            .clipped()
                            .clipShape(
                                .rect(cornerRadius: 8)
                            )
                    }

                    if works.count > 3 {
                        Text("+\(works.count - 3)")
                            .font(.custom("Archivo-Black", size: 14))
                            .foregroundStyle(.black)
                            .frame(
                                width: 52,
                                height: 72
                            )
                            .background(.yellowPrimary)
                            .clipShape(
                                .rect(cornerRadius: 8)
                            )
                        
                    }
                }
            }
        }
        .frame(
            maxWidth: .infinity,
            alignment: .leading
        )
        .padding(16)
    }
}

#Preview {
    WorksSummarySection(
        works: Array(works.prefix(8))
    )
    .background(Color.card)
    .padding()
    .preferredColorScheme(.dark)
}
