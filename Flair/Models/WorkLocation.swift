//
//  WorkLocation.swift
//  Flair
//
//  Created by Apprenant154 on 07/08/2026.
//
import Foundation

struct WorkLocation: Identifiable {
    let id = UUID()
    let name: String
    let cover: String
    let image: String
    let summary: String
    let details: String
    let location: String? /// district  (etiquette jaune)
}
