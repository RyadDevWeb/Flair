//
//  CharacterWorkSectionView.swift
//  Flair
//
//  Created by Apprenant154 on 09/08/2026.
//


import SwiftUI

struct CharacterWorkSectionView: View {
    let work: Work
    let selectedCharacter: WorkCharacter?
    let onSelect: (WorkCharacter) -> Void

    @State private var isExpanded = false

    private let columns = Array(
        repeating: GridItem(.flexible(), spacing: 12),
        count: 3
    )

    private var characters: [WorkCharacter] {
        isExpanded
            ? work.characters
            : Array(work.characters.prefix(5))
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Divider()

            HStack(spacing: 6) {
                Capsule()
                    .fill(.yellowPrimary)
                    .frame(width: 4, height: 22)

                Text(work.title.uppercased())
//                    .font(.headline.bold())
                    .font(.custom("Archivo-Black", size: 18))

            }

            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(characters, id: \.name) { character in
                    CharacterCardView(
                        character: character,
                        isSelected: selectedCharacter?.name == character.name
                    ) {
                        onSelect(character)
                    }
                }

                if work.characters.count > 5 {
                    expandButton
                }
            }
        }
    }

    private var expandButton: some View {
        Button {
            withAnimation(.smooth) {
                isExpanded.toggle()
            }
        } label: {
            VStack(spacing: 8) {
                Image(systemName: isExpanded ? "minus" : "plus")
                    .font(.headline.bold())
                    .frame(width: 38, height: 38)
                    .foregroundStyle(.white)
                    .background(.yellowPrimary)
                    .clipShape(.circle)

                Text(isExpanded ? "Voir\nmoins" : "Voir\nplus")
                    .font(.headline.bold())
                    .multilineTextAlignment(.center)
            }
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    CharacterWorkSectionView(work: works[0], selectedCharacter: nil, onSelect: { _ in })
        .environment(AppStore(works: works, user: user))
        .padding()
}
