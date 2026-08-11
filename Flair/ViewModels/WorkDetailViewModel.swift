//
//  WorkDetailViewModel.swift
//  Flair
//
//  Created by imane on 08/08/2026.
//

import SwiftUI

struct WorkDetailViewModel {
    
    let work: Work

    
    // Badge
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
    
    // Genres
    func genresSeparator(_ genres: [Genre]) -> String? {
        genres.map { $0.rawValue }
            .joined(separator: " • ")
    }
    
    // Series / Anime
    var numberOfSeasons: Int {
        work.nbSeasons ?? 0
    }
    
    var numberOfEpisodes: Int {
        work.nbEpisodes ?? 0
    }
    
    func seasonLabel(_ numberOfSeasons: Int) -> String {
        numberOfSeasons > 1 ? "Saisons" : "Saison"
    }
    
    var formattedSeasonLabel: String {
        seasonLabel(numberOfSeasons)
    }
    
    func episodeLabel(_ numberOfEpisodes: Int) -> String {
        numberOfEpisodes > 1 ? "Épisodes" : "Épisode"
    }
    
    var formattedEpisodeLabel: String {
        episodeLabel(numberOfEpisodes)
    }
    
    // Film
    var formattedDuration: String {
        let hours = work.duration / 60
        let minutes = work.duration % 60
        
        if hours > 0 {
            return "\(hours)h \(minutes)"
        } else if hours < 0 {
            return "\(minutes) min"
        } else {
            return "N/C"
        }
    }
    
    var formattedReleaseYear: String {
        work.airedDate.formatted(.dateTime.year())
    }
    
    // Details cards
    var primaryDetail: (value: String, label: String) {
        switch work.type {
        case .anime, .series:
            return ( String(numberOfSeasons), formattedSeasonLabel )
        case .movie:
            return ( formattedDuration, "Durée" )
        }
    }
    
    var secondaryDetail: (value: String, label: String) {
        
        switch work.type {
        case .anime, .series:
            return ( String(numberOfEpisodes), formattedEpisodeLabel )
        case .movie:
            return ( formattedReleaseYear, "Sortie" )
        }
    }
    
    // Streaming
    var hasStreamingPlatforms: Bool {
        !work.streamingPlatforms.isEmpty
    }
    
    // BOUTONS
    
    // Favoris
    var isFavorite : Bool {
        userLogged.favoriteWorks.contains { $0.id == work.id }
    }
    
    func toggleFavorite(_ work: Work) {
        if isFavorite {
            if let index = userLogged.favoriteWorks.firstIndex(where: { $0.id == work.id }) {
                userLogged.favoriteWorks.remove(at: index)
            }
        } else {
            userLogged.favoriteWorks.append(work)
        }
    }
}
