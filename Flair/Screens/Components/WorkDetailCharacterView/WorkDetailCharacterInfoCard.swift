//
//  WorkDetailCharacterInfoDetail.swift
//  Flair
//
//  Created by ryad Apprenant122 on 10/08/2026.
//

import SwiftUI

struct WorkDetailCharacterInfoCard: View {
    
    let workCharacter: WorkCharacter
    
    var body: some View {
        
        HStack(spacing: 12) {
            
            // Affiliation
            VStack(alignment: .leading, spacing: 8) {
                
                Image(systemName: "figure.fencing")
                    .font(.title3)
                    .foregroundStyle(.yellow)
                
                Text("AFFILIATION")
                    .font(.caption)
                    .tracking(2)
                    .foregroundStyle(.secondary)
                
                Text(workCharacter.groups.first?.team ?? "Inconnue")
                    .font(.body)
                    .foregroundStyle(.primary)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(16)
            .background {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.gray.opacity(0.1))
            }
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(
                        Color.gray.opacity(0.4),
                        lineWidth: 1
                    )
            }
            
            
            // Espèce
            VStack(alignment: .leading, spacing: 8) {
                
                Image(systemName: "person.fill")
                    .font(.title3)
                    .foregroundStyle(.yellow)
                
                Text("ESPÈCE")
                    .font(.caption)
                    .tracking(2)
                    .foregroundStyle(.secondary)
                
                Text(workCharacter.species.joined(separator: ", "))
                    .font(.body)
                    .foregroundStyle(.primary)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(16)
            .background {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.gray.opacity(0.1))
            }
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(
                        Color.gray.opacity(0.4),
                        lineWidth: 1
                    )
            }
        }
    }
}


// MARK: - Preview

#Preview {
    
    WorkDetailCharacterInfoCard(
        workCharacter: works[0].characters[0]
    )
    .padding()
    .preferredColorScheme(.dark)
}
