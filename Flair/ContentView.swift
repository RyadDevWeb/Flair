//
//  ContentView.swift
//  Flair
//
//  Created by Apprenant154 on 30/07/2026.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            Tab("Explorer", systemImage: "safari") {
                ExplorationView()
            }
            Tab("Découvrir", systemImage: "sparkles") {
                DiscoverQuizzView()
            }
            Tab("Calendrier", systemImage: "calendar") {
                CalendarView()
            }
            Tab("Profil", systemImage: "person") {
                ProfilView()
            }
            Tab("Recherche", systemImage: "magnifyingglass", role: .search) {
                // Afficher la recherche
                
            }
        }
        
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
