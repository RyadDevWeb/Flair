//
//  CharacterQuestionView.swift
//  Flair
//
//  Created by Apprenant154 on 09/08/2026.
//

import SwiftUI

struct CharacterQuestionView: View {
    @Environment(AppStore.self) private var appStore
    
    @State private var isCharacterSelectionPresented = false
    
    private var character: WorkCharacter? {
        appStore.onboarding.selectedCharacter
    }
    
    var body: some View {
        VStack(spacing: 12) {
            characterImage
            
            if let character {
                Text(character.name)
                    .font(.title3.bold())
                
                Text(character.summary)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .lineLimit(1)
            } else {
                Text("Aucun personnage de sélectionné")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            Button {
                isCharacterSelectionPresented = true
            } label: {
                Text(
                    character == nil
                    ? "Choisir mon personnage"
                    : "Changer mon personnage"
                )
                .font(.headline)
                .foregroundStyle(.black)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 14)
                .background(.white)
            }
            .buttonStyle(.plain)
        }
        .sheet(isPresented: $isCharacterSelectionPresented) {
            CharacterSelectionView()
                .presentationDragIndicator(.visible)
        }
    }
    
    @ViewBuilder
    private var characterImage: some View {
        if let character {
            Image(character.identityImage)
                .resizable()
                .scaledToFill()
                .frame(
                    width: 260,
                    height: 260,
                    alignment: .top
                )
                .clipped()
                .clipShape(.circle)
        } else {
            Image(systemName: "person.fill")
                .resizable()
                .scaledToFit()
                .padding(55)
                .frame(width: 260, height: 260)
                .foregroundStyle(.black)
                .background(.gray.opacity(0.25))
                .clipShape(.circle)
        }
    }
}

#Preview {
    CharacterQuestionView()
        .environment(AppStore(works: works, user: user))
}
