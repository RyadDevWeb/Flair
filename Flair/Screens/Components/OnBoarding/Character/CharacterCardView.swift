//
//  CharacterCardView.swift
//  Flair
//
//  Created by Apprenant154 on 09/08/2026.
//


import SwiftUI
import UIKit

/// Affiche une carte permettant de sélectionner un personnage.
struct CharacterCardView: View {
    let character: WorkCharacter
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack(alignment: .leading, spacing: 4) {
                // Image du personnage avec indicateur de sélection.
                CharacterThumbnailView(character: character)
                    .overlay(alignment: .center) {
                        if isSelected {
                            Rectangle()
                                .fill(.black)
                                .opacity(0.4)
                            Image(systemName: "checkmark")
                                .font(.title)
                                .fontWeight(.black)
                                .foregroundStyle(.white)
                                .frame(width: 52, height: 52)
                                .background(.yellowPrimary)
                                .clipShape(.circle)
                        }
                    }

                // Affiche uniquement le premier prénom du personnage.
                Text(character.name.components(separatedBy: " ")[0].uppercased())
//                    .font(.caption.bold())
                    .font(.custom("Archivo-Black", size: 16))
                    .foregroundStyle(isSelected ? .yellowPrimary : .primary)
                    .lineLimit(1)
                    .minimumScaleFactor(0.7)
            }
            .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
    }
}

/// Affiche l'image du personnage en adaptant son positionnement.
private struct CharacterThumbnailView: View {
    let character: WorkCharacter
    
    /// Récupère l'image depuis les Assets.
    private var image: UIImage? {
        UIImage(named: character.cover)
    }
    /// Adapte l'alignement selon le format de l'image (portrait ou paysage) si on utilise la cover en tant qu'image de profil, possibilité de choix par l'user plus tard dans les settings potentiellement.
    private var alignment: Alignment {
        guard let image else {
            return .center
        }

        return image.size.width > image.size.height
            ? .center
            : .top
    }

    var body: some View {
        // Utilisé pour représenter un cadre vide et y insérer l'image
        Color.clear
            .aspectRatio(0.75, contentMode: .fit)
            .overlay(alignment: alignment) {
                if let image {                UIKitImageView(image: image)
                        .aspectRatio(
                            image.size.width / image.size.height,
                            contentMode: .fill
                        )
                        .frame(
                            maxWidth: .infinity,
                            maxHeight: .infinity,
                            alignment: .top
                        )
                } else {
                    Rectangle()
                        .fill(.gray.opacity(0.2))
                        .overlay {
                            Image(systemName: "person.fill")
                                .font(.largeTitle)
                                .foregroundStyle(.secondary)
                        }
                }
            }
            .clipped()
    }
}

#Preview {
    CharacterCardView(character: works[0].characters[0], isSelected: false, action: {  })
        .environment(AppStore(works: works, user: user))
    
    CharacterCardView(character: works[0].characters[1], isSelected: true, action: {  })
        .environment(AppStore(works: works, user: user))
    
    CharacterCardView(character: works[1].characters[0], isSelected: false, action: {  })
        .environment(AppStore(works: works, user: user))
    CharacterCardView(character: works[2].characters[1], isSelected: true, action: {  })
        .environment(AppStore(works: works, user: user))
}
