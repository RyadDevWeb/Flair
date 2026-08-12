//
//  WorksDetailCharacterView.swift
//  Flair
//
//  Created by Apprenant131 on 29/07/2026.
//

import SwiftUI

struct WorksDetailCharacterView: View {
    
    let workCharacter: WorkCharacter
    var viewModel: WorkDetailCharacterViewModel {
        WorkDetailCharacterViewModel(workCharacter: workCharacter)
    }
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 20) {
                
                // Image principale
                GeometryReader { geometry in
                    Image(workCharacter.detailImage)
                        .resizable()
                        .scaledToFill()
                        .frame(
                            width: geometry.size.width,
                            height: geometry.size.width * 0.75
                        )
                        .clipped()
                        .clipShape(
                            RoundedRectangle(cornerRadius: 20)
                            
                        )
                        .overlay {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(
                                    Color.yellowPrimary.opacity(0.4),
                                    lineWidth: 1
                                )
                        }
                }
                .frame(height: 280)
                
                
                // Nom du personnage
                Text(workCharacter.name.uppercased())
                    .font(.largeTitle)
                    .bold()
                
                
                // Groupe sous le nom
                if let firstGroup = workCharacter.groups.first {
                    
                    Text(firstGroup.team.uppercased())
                        .font(.caption)
                        .tracking(2)
                        .foregroundStyle(.yellow)
                }
                
                
                // Petit titre avant la card
                HStack(spacing: 6) {
                    
                    Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 3, height: 18)
                    
                    Text(workCharacter.name.uppercased())
                        .font(.headline)
                        .bold()
                }
                
                
                // id Card
                WorkDetailCharacterCard(
                    workCharacter: workCharacter
                )
                
                
                // Infos en grille
                WorkDetailCharacterInfoCard(
                    workCharacter: workCharacter
                )
                
                // Description
                WorkDetailCharacterDescription(
                    workCharacter: workCharacter
                )
            }
            .padding()
        }
        .background(Color.black)
        .preferredColorScheme(.dark)
    }
}


// MARK: - Preview

#Preview {
    
    WorksDetailCharacterView(
        workCharacter: works[0].characters[0]
    )
}
