//
//  CharacterSelectionViewModel.swift
//  Flair
//
//  Created by Apprenant154 on 09/08/2026.
//


import Observation

@Observable
@MainActor
final class CharacterSelectionViewModel {
    private(set) var selectedCharacter: WorkCharacter?

    func load(_ character: WorkCharacter?) {
        selectedCharacter = character
    }

    func select(_ character: WorkCharacter) {
        selectedCharacter = character
    }
}