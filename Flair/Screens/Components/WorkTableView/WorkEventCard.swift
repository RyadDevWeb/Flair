//
//  WorkEventCard.swift
//  Flair
//
//  Created by imane on 09/08/2026.
//

import SwiftUI

struct WorkEventCard: View {

    let workEvent: WorkEvent

    var body: some View {

        // Image
        Image(workEvent.cover)
            .resizable()
            .frame(maxWidth: .infinity)
            .frame(height: 260)
            .clipShape(.rect(cornerRadius: 8))

            // bordure + opacité
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.borderCard, lineWidth: 0.5)
                Color.black.opacity(0.4)
            }

            // année + titre + période
            .overlay(alignment: .bottomLeading) {
                VStack(alignment: .leading, spacing: 8) {

                    // année
                    Text(String(workEvent.year))
                        .font(.custom("Archivo-Black", size: 44))
                        .foregroundStyle(.yellowPrimary)

                    // titre
                    Text(workEvent.title)
                        .font(.custom("Archivo-Black", size: 20))
                        .foregroundStyle(.textPrimary)

                    // SF Symbole + période
                    HStack(spacing: 2) {
                        Image(systemName: "bolt.fill")
                            .foregroundStyle(.yellowPrimary)

                        Text(workEvent.period)
                    }
                    .font(.footnote)
                }
                .padding()
                .lineLimit(1)
            }
    }
}

#Preview {
    WorkEventCard(workEvent: works[0].datesChronology[0])
}

#Preview {
    WorkEventCard(workEvent: works[1].datesChronology[0])
}

#Preview {
    WorkEventCard(workEvent: works[2].datesChronology[0])
}

#Preview {
    WorkEventCard(workEvent: works[3].datesChronology[0])
}

#Preview {
    WorkEventCard(workEvent: works[4].datesChronology[0])
}
