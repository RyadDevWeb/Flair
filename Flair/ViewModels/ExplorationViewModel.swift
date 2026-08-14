//
//  ExplorationViewModel.swift
//  Flair
//
//  Created by Apprenant154 on 12/08/2026.
//

import Foundation
import Observation

enum ExplorationDisplayMode: String, CaseIterable, Identifiable, Hashable {
    case sections = "Par sections"
    case allWorks = "Toutes les œuvres"
    
    var id: String {
        rawValue
    }
}

@Observable
final class ExplorationViewModel {
    
    var displayMode: ExplorationDisplayMode = .sections
    var isFilterPresented = false
    
    private(set) var selectedTypes: [Types] = []
    private(set) var selectedGenres: [Genre] = []
    
    var hasActiveFilters: Bool {
        !selectedTypes.isEmpty || !selectedGenres.isEmpty
    }
    
    func toggleType(_ type: Types) {
        if selectedTypes.contains(where: { $0.rawValue == type.rawValue }) {
            selectedTypes.removeAll { $0.rawValue == type.rawValue
            }
        } else {
            selectedTypes.append(type)
        }
    }
    
    /// 
    func toggleGenre(_ genre: Genre) {
        if selectedGenres.contains(where: { $0.rawValue == genre.rawValue }) {
            selectedGenres.removeAll { $0.rawValue == genre.rawValue }
        } else {
            selectedGenres.append(genre)
        }
    }
    
    /// Vérifie si le type   sélectionné correspond pour filtrer
    func isTypeSelected(_ type: Types) -> Bool {
        selectedTypes.contains { $0.rawValue == type.rawValue }
    }
    
    /// Vérifie si le genre sélectionné correspond pour filtrer
    func isGenreSelected(_ genre: Genre) -> Bool {
        selectedGenres.contains { $0.rawValue == genre.rawValue }
    }
    
    /// Réinitialiser les filtres
    func resetFilters() {
        selectedTypes.removeAll()
        selectedGenres.removeAll()
    }
    
    /// Les oeuvres visibles en fonction d'un filtre
    func visibleWorks(from works: [Work], user: User) -> [Work] {
        works.filter { work in
            
            let respectsAgeRating =
            work.ageRating <= user.ageRating
            
            let respectsType =
            selectedTypes.isEmpty ||
            selectedTypes.contains {
                $0.rawValue == work.type.rawValue
            }
            
            let respectsGenres =
            selectedGenres.isEmpty ||
            selectedGenres.contains { selectedGenre in
                work.genres.contains { $0.rawValue == selectedGenre.rawValue }
            }
            
            return respectsAgeRating
            && respectsType
            && respectsGenres
        }
    }
    

    /// Reprendre l'exploration
    func resumeWorks(
        user: User
    ) -> [Work] {
            // Temporaire :
            // le projet ne possède pas encore de progression par œuvre.
        visibleWorks(
            from: user.favoriteWorks,
            user: user
        )
    }
    
    /// Les oeuvres les plus populaires
    func popularWorks(
        from works: [Work],
        user: User
    ) -> [Work] {
            // Temporaire :
            // Work ne possède pas encore de statistique de popularité.
        visibleWorks(
            from: works,
            user: user
        )
    }
    
    func newWorks(
        from works: [Work],
        user: User
    ) -> [Work] {
        visibleWorks(
            from: works,
            user: user
        )
        .filter {
            $0.airedDate <= .now
        }
        .sorted {
            $0.airedDate > $1.airedDate
        }
    }
    
    func upcomingWorks(
        from works: [Work],
        user: User
    ) -> [Work] {
        visibleWorks(
            from: works,
            user: user
        )
        .filter {
            $0.airedDate > .now
        }
        .sorted {
            $0.airedDate < $1.airedDate
        }
    }
    
    func charactersOfTheDay(
        from works: [Work],
        user: User
    ) -> [WorkCharacter] {
        visibleWorks(
            from: works,
            user: user
        )
        .flatMap(\.characters)
    }
    
    private func recommendationScore(
        _ work: Work,
        user: User
    ) -> Int {
        var score = 0
        
        if work.type.rawValue == user.favoriteType.rawValue {
            score += 3
        }
        
        for genre in work.genres {
            if user.favoriteGenres.contains(where: {
                $0.rawValue == genre.rawValue
            }) {
                score += 1
            }
        }
        
        if user.favoriteWorks.contains(where: {
            $0.id == work.id
        }) {
            score += 2
        }
        
        return score
    }
    
    func recommendedWorks(from works: [Work], user: User) -> [Work] {
        visibleWorks(from: works, user: user)
            .sorted { recommendationScore($0, user: user) > recommendationScore($1, user: user) }
    }
}
