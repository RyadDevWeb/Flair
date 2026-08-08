//
//  WorkDetailViewModel.swift
//  Flair
//
//  Created by imane on 08/08/2026.
//

import SwiftUI


struct WorkDetailViewModel {
    
    let work: Work
    
    // Gestion couleurs des badges
    func badgeColor(_ type: Types) -> Color {
        
        switch type {
        case .anime:
            return .badgeAnime
        case .series:
            return .badgeSerie
        case .movie:
            return .badgeFilm
        }
    }
    
    // Séparateur + genres
    func genresSeparator(_ genres: [Genre]) -> String? {
        
        genres.map { $0.rawValue }
            .joined(separator: " • ")
        
    }
    
    // Gestions des nils
    var seasonCount: Int {
        work.nbSeasons ?? 0
    }
    
    var episodeCount: Int {
        work.nbEpisodes ?? 0
    }
    
    // saison(s)
    func formattedSeasons(_ nbSeasons: Int) -> String {
        if nbSeasons > 1 {
            return "Saisons"
        } else {
            return "Saison"
        }
    }
    
    var seasonFormatted: String {
        formattedSeasons(seasonCount)
    }
    
    // épisode(s)
    func formattedEpisodes(_ nbEpisodes: Int) -> String {
        if nbEpisodes > 1 {
            return "Épisodes"
        } else {
            return "Épisode"
        }
    }
    
    var episodeFormatted: String {
        formattedEpisodes(episodeCount)
    }
    
    // Vidéo
    var urlFormatted : URL? {
        work.url
    }
}
