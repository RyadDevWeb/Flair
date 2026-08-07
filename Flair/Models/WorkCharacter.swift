//
//  WorkCharacter.swift
//  Flair
//
//  Created by Apprenant154 on 07/08/2026.
//
import Foundation

struct WorkCharacter: Identifiable {
    /// Notion (Personnage)
    let id = UUID()
    let name: String
    let summary: String
    let description: String
    let cover: String
    let identityImage: String
    let detailImage: String
    let todayImage: String
    let groups: [WorkOrganization]
    let skills: [String]
    let species: [String]
}
