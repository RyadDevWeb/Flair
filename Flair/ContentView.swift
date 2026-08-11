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

            }
            Tab("Découvrir", systemImage: "sparkles") {

            }
            Tab("Calendrier", systemImage: "calendar") {

            }
            Tab("Profil", systemImage: "person") {

            }
            Tab("Recherche", systemImage: "magnifyingglass", role: .search) {

            }
        }
    
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
