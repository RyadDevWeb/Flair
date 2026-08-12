//
//  WorkFavorisGridView.swift
//  Flair
//
//  Created by Apprenant151 on 11/08/2026.
//

import SwiftUI

struct WorkFavorisGridView: View {
    
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
        ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(userLogged.favoriteWorks) { work in
                    NavigationLink(
                        destination: WorkDetailView(
                            work: work
                        )
                    ) {
                        WorkCoverView(work: work)
                    }.navigationTitle("Mes favoris")
                }
            }
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    ZStack {
            Color.bg
            NavigationStack {
                WorkFavorisGridView()
            }
        }.ignoresSafeArea()
}
