//
//  WorkDetailCharacterViewModel.swift
//  Flair
//
//  Created by ryad Apprenant122 on 11/08/2026.
//

import Foundation

struct WorkDetailCharacterViewModel {
    
    let workCharacter: WorkCharacter
    
    func formatGroups() -> String {
        workCharacter.groups
            .map { $0.team }
            .joined(separator: ", ")
    }
    
    func formatSpecies() -> String {
        workCharacter.species.joined(separator: ", ")
    }
}
