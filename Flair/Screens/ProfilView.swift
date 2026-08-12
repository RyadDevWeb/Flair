//
//  ProfilView.swift
//  flair
//
//  Created by Apprenant131 on 29/07/2026.
//

import SwiftUI

struct ProfilView: View {

    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16),
    ]

    var body: some View {
        ScrollView {

            VStack(spacing: 24) {

                // Bannière + photo de profil
                Image("frieren-royal_capital-cover")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity)
                    .frame(height: 178)
                    .clipped()
                    .overlay(alignment: .bottomLeading) {

                        // Background de la photo de profil
                        Circle()
                            .fill(Color.bg)
                            .frame(width: 100, height: 100)

                            // Photo de profil
                            .overlay {
                                Image("frieren-id_card")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                            }

                            // Bordure
                            .overlay {
                                Circle()
                                    .stroke(Color.card, lineWidth: 0.5)
                            }

                            // Position photo de profil
                            .offset(x: 20, y: 60)
                    }

                // Pseudo
                HStack {
                    Spacer()
                    Text(userLogged.name)
                    Spacer()
                }
                .padding(.trailing, 50)
                .font(.custom("Archivo-Black", size: 22))

                // Mes découvertes + Mes favoris
                VStack(spacing: 24) {

                    // Mes découvertes
                    WorkDetailTitle(text: "Mes découvertes")

                    LazyVGrid(columns: columns, spacing: 16) {
                        StatsCard(
                            nbr: 8,
                            detail: "Organizations",
                            backgroundColor: .badgeFilm,
                        )

                        StatsCard(
                            nbr: 3,
                            detail: "lieux",
                            backgroundColor: .badgeSerie,
                        )

                        StatsCard(
                            nbr: 23,
                            detail: "Personnages",
                            backgroundColor: .badgeAnime,
                        )

                        StatsCard(
                            nbr: 12,
                            detail: "Chronologie",
                            backgroundColor: .yellowPrimary,
                        )
                    }

                    // Mes favoris + Voir plus
                    HStack {
                        WorkDetailTitle(text: "Mes favoris")
                        Spacer()

                        NavigationLink(destination: WorkFavorisGridView()) {
                            TextButtonVoirPlus()
                        }
                    }

                    // works favorites
                    ScrollView(.horizontal) {
                        HStack(spacing: 24) {
                            ForEach(userLogged.favoriteWorks) { work in
                                NavigationLink(
                                    destination: WorkDetailView(work: work)
                                ) {
                                    WorkCoverView(work: work)
                                }
                            }
                        }
                    }
                }
                .padding(.horizontal, 16)
            }
        }
        .ignoresSafeArea()
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ZStack {
        Color.bg
        NavigationStack {
            ProfilView()
        }
    }
    .ignoresSafeArea()
}
