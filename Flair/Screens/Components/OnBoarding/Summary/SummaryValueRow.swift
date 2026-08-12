//
//  SummaryValueRow.swift
//  Flair
//
//  Created by Apprenant154 on 11/08/2026.
//


import SwiftUI

/// Affiche une valeur simple du récapitulatif
/// accompagnée de son intitulé.
struct SummaryValueRow: View {
    let title: String
    let value: String

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 6) {
                Text(title)
                    .font(.custom("Archivo-Bold", size: 11))
                    .foregroundStyle(.secondary)
                    .textCase(.uppercase)

                Text(value)
                    .font(.custom("Archivo-Black", size: 17))
            }

            Spacer()

            Image(systemName: "checkmark")
                .font(.system(size: 12, weight: .black))
                .foregroundStyle(.black)
                .frame(width: 26, height: 26)
                .background(.yellowPrimary)
                .clipShape(.circle)
        }
        .padding(16)
    }
}

#Preview {
    SummaryValueRow(
        title: "Restriction",
        value: "14+"
    )
    .background(Color.card)
    .padding()
    .preferredColorScheme(.dark)
}