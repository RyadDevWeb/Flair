//
//  User.swift
//  Flair
//
//  Created by Apprenant154 on 07/08/2026.
//
import Foundation
import Observation

@Observable
class User: Identifiable {
    let id = UUID()
    var name: String
    var image: String
    var ageRating: Int
    var favoriteType: Types
    var favoriteGenres: [Genre]
    var favoriteWorks: [Work]
    /// Notion [Oeuvre]
    let statCharacter: Int
    let statOrganization: Int
    let statLocation: Int
    let statChronology: Int
    
    init(
        name: String,
        image: String,
        ageRating: Int,
        favoriteType: Types,
        favoriteGenres: [Genre],
        favoriteWorks: [Work],
        statCharacter: Int,
        statOrganization: Int,
        statLocation: Int,
        statChronology: Int
    ) {
        self.name = name
        self.image = image
        self.ageRating = ageRating
        self.favoriteType = favoriteType
        self.favoriteGenres = favoriteGenres
        self.favoriteWorks = favoriteWorks
        self.statCharacter = statCharacter
        self.statOrganization = statOrganization
        self.statLocation = statLocation
        self.statChronology = statChronology
    }
}
