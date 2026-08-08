//
//  WorkDetailButtons.swift
//  Flair
//
//  Created by imane on 07/08/2026.
//

import SwiftUI

struct WorkDetailButtons: View {
    
    let work : Work
    
    private var viewModel : WorkDetailViewModel{
        WorkDetailViewModel(work: work)
    }
    
    var body: some View {
        
        HStack (alignment: .center, spacing: 24) {
            
            // Partager
            ShareLink(
                item: "Découvre cette univers : \(work.title)"
            ) {
                VStack (spacing : 3) {
                    Image(systemName: "square.and.arrow.up")
                    Text("Partager")
                }
            }
            
            // Favoris
            Button {
                viewModel.toggleFavorite(work)
            } label: {
                VStack (spacing : 3) {
                    Image(systemName: viewModel.isFavorite ? "heart.fill" : "heart")
                    Text("Favoris")
                }
            }
            
        }
        .font(.headline)
        .bold()
        
    }
}

#Preview {
    WorkDetailButtons(work : works[0])
}
