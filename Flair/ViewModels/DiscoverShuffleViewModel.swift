//
//  DiscoverShuffleViewModel.swift
//  Flair
//
//  Created by Apprenant151 on 13/08/2026.
//

import SwiftUI

struct DiscoverShuffleViewModel {

    @Binding var selectedType: Types

    func filteredWorks(selectedType: Types, selectedGenre: Genre) -> [Work] {
        let filterWork = works.filter {
            $0.type == selectedType && $0.genres.contains(selectedGenre)
        }
        return filterWork
    }

    func colorPicker(type: Types) -> Color {
        switch type {
        case .movie:
            return Color.badgeFilm
        case .series:
            return Color.badgeSerie
        case .anime:
            return Color.badgeAnime
        }
    }
}
