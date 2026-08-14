//
//  ExplorationCharacterCardView.swift
//  Flair
//
//  Created by Apprenant154 on 12/08/2026.
//

import SwiftUI

struct ExplorationCharacterCardView: View {

    let character: WorkCharacter

    var body: some View {
        NavigationLink {
            WorksDetailCharacterView(workCharacter: character)
        } label: {
            GeometryReader { geometry in
                Image(character.todayImage)
                    .resizable()
                    .scaledToFit()
                    .frame(
                        width: geometry.size.width,
                        height: geometry.size.height,
                    )
                    .clipped()
                    .background { Image(.backgroundToday).resizable() }
                    .clipShape(.rect(cornerRadius: 16))
                    .overlay(alignment: .bottomLeading) {
                        Text(character.name)
                            .padding(.horizontal, 12)
                            .padding(.vertical, 4)
                            .background {
                                Capsule()
                                    .fill(.black.opacity(0.6))
                                    .stroke(.accent, lineWidth: 1.5)
                                    
                            }
                            .padding()
                            .font(.custom("Archivo-Bold", size: 14))
                            
                    }
            }
            .aspectRatio(2 / 3, contentMode: .fit)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    NavigationStack {
        ExplorationCharacterCardView(character: works[2].characters[3])
    }
}

#Preview {
    NavigationStack {
        ExplorationCharacterSectionView(characters: works[0].characters)

    }
}
