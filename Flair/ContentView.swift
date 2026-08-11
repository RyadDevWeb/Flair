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
                NavigationStack {
                    ExplorationView()
                }
            }
            Tab("Découvrir", systemImage: "sparkles") {
                NavigationStack {
                    DiscoverQuizzView()
                }
            }
            Tab("Calendrier", systemImage: "calendar") {
                NavigationStack {
                    CalendarView()
                }
            }
            Tab("Profil", systemImage: "person") {
                NavigationStack {
                    ProfilView()
                }
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
