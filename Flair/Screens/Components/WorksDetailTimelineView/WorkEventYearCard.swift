//
//  WorkEventYearCard.swift
//  Flair
//
//  Created by Apprenant154 on 14/08/2026.
//

import SwiftUI

/// Affiche l'année d'un événement.
struct WorkEventYearCard: View {

    let year: Int

    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 10
        ) {

            Label(
                "ANNÉE",
                systemImage: "calendar"
            )
            .font(
                .custom(
                    "Archivo-Bold",
                    size: 12
                )
            )
            .tracking(1.5)
            .foregroundStyle(
                .textSecondary
            )

            Text(String(year))
                .font(
                    .custom(
                        "Archivo-Black",
                        size: 36
                    )
                )
                .foregroundStyle(
                    .yellowPrimary
                )
        }
        .frame(
            maxWidth: 180,
            alignment: .leading
        )
        .padding(16)
        .background {
            RoundedRectangle(
                cornerRadius: 16
            )
            .fill(
                Color.yellowPrimary
                    .opacity(0.08)
            )
        }
        .overlay {
            RoundedRectangle(
                cornerRadius: 16
            )
            .stroke(
                Color.borderCard,
                lineWidth: 0.5
            )
        }
    }
}

#Preview {
    WorkEventYearCard(
        year: 845
    )
    .padding()
    .background(Color.bg)
}
