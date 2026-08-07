//
//  Work.swift
//  Flair
//
//  Created by Apprenant154 on 07/08/2026.
//
import Foundation

enum Types: String, CaseIterable {
    case movie = "Film"
    case series = "Série"
    case anime = "Animé"
}

enum Genre: String, CaseIterable {
    case fantasy = "Fantasy"
    case action = "Action"
    case drama = "Drame"
    case adventure = "Aventure"
    case comedy = "Comédie"
    case horror = "Horreur"
    case mystery = "Mystère"
    case romance = "Romance"
    case scienceFiction = "Science-fiction"
    case thriller = "Thriller"
    case darkFantasy = "Dark Fantasy"
    case political = "Politique"
    case war = "Guerre"
}

struct Work: Identifiable {
    /// (Oeuvres)
    let id = UUID()
    let type: Types
    let title: String
    let image: String
    let genres: [Genre]
    let ageRating: Int
    let nbSeasons: Int?
    /// optionnel
    let nbEpisodes: Int?
    /// optionnel
    let airedDate: Date
    let summary: String
    let locations: [WorkLocation]
    let characters: [WorkCharacter]
    let datesChronology: [WorkEvent]
    let organizations: [WorkOrganization]
    let streamingPlatforms: [String?]
    let duration: Int
    let url: URL?
    /// url du teaser
}
