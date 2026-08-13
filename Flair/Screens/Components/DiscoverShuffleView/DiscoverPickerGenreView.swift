//
//  ExplorationPickerGenreView.swift
//  Flair
//
//  Created by Apprenant151 on 13/08/2026.
//

import SwiftUI

struct ExplorationPickerGenre: View {
    
    @Binding var selectedGenre: Genre

    var body: some View {
        
        Picker("Genre", selection: $selectedGenre) {
            ForEach(Genre.allCases, id: \.self) {
                genre in
                Text(genre.rawValue)
                    .tag(genre)
            }
        }
        .pickerStyle(.inline)
    }
}

#Preview {
    ExplorationPickerGenre(selectedGenre: .constant(.action))
}
