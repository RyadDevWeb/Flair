//
//  CharacterSelectionView.swift
//  Flair
//
//  Created by Apprenant154 on 09/08/2026.
//

import SwiftUI

struct CharacterSelectionView: View {
    @Environment(AppStore.self) private var appStore
    @Environment(\.dismiss) private var dismiss
    
    @State private var viewModel = CharacterSelectionViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 24) {
                    introduction
                    
                    ForEach(appStore.works, id: \.title) { work in
                        if !work.characters.isEmpty {
                            CharacterWorkSectionView(
                                work: work,
                                selectedCharacter: viewModel.selectedCharacter,
                                onSelect: viewModel.select
                            )
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Choix du personnage")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button(action: confirmSelection) {
                        Image(systemName: "checkmark")
                    }
                    .disabled(viewModel.selectedCharacter == nil)
                    .tint(.yellowPrimary)
                }
            }
        }
        .onAppear {
            viewModel.load(appStore.onboarding.selectedCharacter)
        }
    }
    
    private var introduction: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(
                "Choisis ton \(Text("personnage").foregroundStyle(.yellowPrimary))"
            )
            .font(.custom("Archivo-Black", size: 24))
            .textCase(.uppercase)

            Text(
                "Tous les personnages disponibles \ndans les \(Text("univers").foregroundStyle(.yellowPrimary)) de Flair"
            )
            .font(.custom("Archivo-Black", size: 16))
            .textCase(.uppercase)
        }
    }
    
    private func confirmSelection() {
        guard let character = viewModel.selectedCharacter else { return }
        
        appStore.onboarding.selectCharacter(character)
        dismiss()
    }
}


#Preview {
    CharacterSelectionView()
        .environment(AppStore(works: works, user: user))
}
