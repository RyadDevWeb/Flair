//
//  WorkFavorisGridView.swift
//  Flair
//
//  Created by Apprenant151 on 11/08/2026.
//

import SwiftUI

struct WorkFavorisGridView: View {
    
    @Environment(AppStore.self) private var appStore
    
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
        ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(appStore.user.favoriteWorks) { work in
                    NavigationLink(
                        destination: WorkDetailView(
                            work: work
                        )
                    ) {
                        WorkCardComponentView(work: work)
//                        WorkCoverView(work: work)
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
                    .environment(AppStore(works: works, user: userLogged))
            }
        }.ignoresSafeArea()
}
