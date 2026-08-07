//
//  User.swift
//  Flair
//
//  Created by Apprenant154 on 07/08/2026.
//
import Foundation

struct User: Identifiable {
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
}
