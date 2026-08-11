//
//  WorkDetailCharacterCard.swift
//  Flair
//
//  Created by ryad Apprenant122 on 11/08/2026.
//



import SwiftUI

struct WorkDetailCharacterCard: View {
    
    let workCharacter: WorkCharacter
    
    var body: some View {
        
        HStack(spacing: 12) {
            
            // Image du personnage
            Image(workCharacter.identityImage)
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70)
                .clipShape(
                    RoundedRectangle(cornerRadius: 8)
                )
            
            // Informations du personnage
            VStack(alignment: .leading, spacing: 6) {
                
                Text(workCharacter.name)
                    .font(.title3)
                    .bold()
                
                if let firstGroup = workCharacter.groups.first {
                    Text(firstGroup.team)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                
                ForEach(workCharacter.skills, id : \.self) {
                    skill in
                    Text(skill)
                }
                .font(.caption)
                .foregroundStyle(.secondary)
            }
            
            Spacer()
        }
        .padding(8)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background {
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.gray.opacity(0.2))
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


// MARK: - Preview

#Preview {
    WorkDetailCharacterCard(
        workCharacter: works[0].characters[0]
    )
    .padding()
}
