//
//  ContentView.swift
//  Flair
//
//  Created by Apprenant154 on 30/07/2026.
//

import SwiftUI

struct ContentView: View {

    @State private var selectedTab = 0

    var body: some View {

        TabView(selection: $selectedTab) {

            NavigationStack {
                ExplorationView()
            }
            .tabItem {
                Label("Explorer", systemImage: "safari")
            }.tag(0)

            NavigationStack {
                DiscoverShuffleView()
            }
            .tabItem {
                Label("Découvrir", systemImage: "sparkles")
            }.tag(1)

            NavigationStack {
                CalendarView(works: works)
            }
            .tabItem {
                Label("Calendrier", systemImage: "calendar")
            }.tag(2)

            NavigationStack {
                ProfilView()
            }
            .tabItem {
                Label("Profil", systemImage: "person")
            }.tag(3)
        }

    }
}

#Preview {
    NavigationStack {
        ContentView()
            .environment(AppStore(works: works, user: userLogged))
    }
}
