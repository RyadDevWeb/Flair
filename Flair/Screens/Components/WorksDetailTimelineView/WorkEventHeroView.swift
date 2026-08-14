//
//  WorkEventHeroView.swift
//  Flair
//
//  Created by Apprenant154 on 14/08/2026.
//

import SwiftUI

/// Affiche l'image principale,
/// la période et le titre d'un événement.
struct WorkEventHeroView: View {

    let workEvent: WorkEvent

    var body: some View {
        ZStack(
            alignment: .bottomLeading
        ) {

            /// Image principale de l'événement.
            Image(workEvent.image)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .frame(height: 420)
                .clipped()

            /// Assombrit progressivement le bas de l'image
            /// afin de la faire disparaître dans le fond.
            LinearGradient(
                colors: [
                    .clear,
                    Color.bg.opacity(0.25),
                    Color.bg
                ],
                startPoint: .top,
                endPoint: .bottom
            )

            VStack(
                alignment: .leading,
                spacing: 12
            ) {

                /// Période de l'événement.
                HStack(spacing: 8) {

                    Circle()
                        .fill(.yellowPrimary)
                        .frame(
                            width: 8,
                            height: 8
                        )

                    Text(
                        workEvent.period
                            .uppercased()
                    )
                    .font(
                        .custom(
                            "Archivo-Bold",
                            size: 11
                        )
                    )
                    .tracking(1)
                    .lineLimit(1)
                }
                .foregroundStyle(
                    .textPrimary
                )
                .padding(
                    .horizontal,
                    10
                )
                .padding(
                    .vertical,
                    7
                )
                .background {
                    RoundedRectangle(
                        cornerRadius: 8
                    )
                    .fill(
                        .black.opacity(0.55)
                    )
                }
                .overlay {
                    RoundedRectangle(
                        cornerRadius: 8
                    )
                    .stroke(
                        Color.borderCard,
                        lineWidth: 0.5
                    )
                }

                /// Titre de l'événement.
                Text(workEvent.title)
                    .font(
                        .custom(
                            "Archivo-Black",
                            size: 34
                        )
                    )
                    .foregroundStyle(
                        .textPrimary
                    )
                    .fixedSize(
                        horizontal: false,
                        vertical: true
                    )
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 24)
        }
    }
}

#Preview {
    WorkEventHeroView(
        workEvent:
            works[0].datesChronology[0]
    )
}
