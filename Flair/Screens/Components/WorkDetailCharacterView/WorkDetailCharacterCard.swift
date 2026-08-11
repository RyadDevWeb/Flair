//
//  WorkDetailCharacterInfoDetail.swift
//  Flair
//
//  Created by ryad Apprenant122 on 10/08/2026.
//

import SwiftUI

struct WorkDetailCharacterInfoCard: View {
    
    let icon: String
    let title: String
    let detail: String
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8) {
            
            Image(systemName: icon)
                .font(.title3)
                .foregroundStyle(.yellow)
            
            Text(title.uppercased())
                .font(.caption)
                .tracking(2)
                .foregroundStyle(.secondary)
            
            Text(detail)
                .font(.body)
                .foregroundStyle(.primary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.gray.opacity(0.1))
        }
        .overlay {
            RoundedRectangle(cornerRadius: 12)
                .stroke(
                    Color.gray.opacity(0.4),
                    lineWidth: 1
                )
        }
    }
}


// MARK: - Preview Affiliation

#Preview("Affiliation") {
    
    WorkDetailCharacterInfoCard(
        icon: "figure.fencing",
        title: "Affiliation",
        detail: works[0]
            .characters[0]
            .groups
            .first?
            .team ?? "Inconnue"
    )
    .padding()
    .preferredColorScheme(.dark)
}


// MARK: - Preview Espèce

#Preview("Espèce") {
    
    WorkDetailCharacterInfoCard(
        icon: "person.fill",
        title: "Espèce",
        detail: works[0]
            .characters[0]
            .species
            .joined(separator: ", ")
    )
    .padding()
    .preferredColorScheme(.dark)
}
