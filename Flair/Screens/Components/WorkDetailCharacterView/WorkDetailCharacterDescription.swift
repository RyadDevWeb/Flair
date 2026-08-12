//
//  W.swift
//  Flair
//
//  Created by ryad Apprenant122 on 10/08/2026.
//

import SwiftUI

struct WorkDetailCharacterDescription: View {
    
    let workCharacter: WorkCharacter
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 12) {
            
            Text("DESCRIPTION")
                .font(.caption)
                .tracking(2)
                .foregroundStyle(.secondary)
            
            Text(workCharacter.description)
                .font(.body)
                .foregroundStyle(.primary)
                .multilineTextAlignment(.leading)
                .lineSpacing(4)
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
                    Color.yellowPrimary.opacity(0.4),
                    lineWidth: 1
                )
        }
    }
}


// MARK: - Preview

#Preview {
    
    WorkDetailCharacterDescription(
        workCharacter: works[0].characters[0]
    )
    .padding()
    .preferredColorScheme(.dark)
}
