//
//  ProfilView.swift
//  flair
//
//  Created by Apprenant131 on 29/07/2026.
//

import SwiftUI

struct ProfilView: View {
    
    @Environment(AppStore.self) private var appStore
    
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
                                Image(appStore.user.image)
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
                    Text(appStore.user.name)
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
                            nbr: appStore.user.statOrganization,
                            detail: "Organizations",
                            backgroundColor: .badgeFilm
                        )
                        
                        StatsCard(
                            nbr: appStore.user.statLocation,
                            detail: "Lieux",
                            backgroundColor: .badgeSerie
                        )
                        
                        StatsCard(
                            nbr: appStore.user.statCharacter,
                            detail: "Personnages",
                            backgroundColor: .badgeAnime
                        )
                        
                        StatsCard(
                            nbr: appStore.user.statChronology,
                            detail: "Chronologie",
                            backgroundColor: .yellowPrimary
                        )
                    }
                    
                        // Mes favoris + Voir plus
                    HStack {
                        WorkDetailTitle(text: "Mes favoris")
                        Spacer()
                        
                        NavigationLink(
                            destination: WorkFavorisGridView()
                        ) {
                            TextButtonVoirPlus()
                        }
                    }
                    
                        // works favorites
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(appStore.user.favoriteWorks) { work in
                                NavigationWorkCardView(work: work)
                            }
                        }
                        .frame(height: 200)
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
                .environment(AppStore(works: works, user: userLogged))
        }
    }
    .ignoresSafeArea()
}
