//
//  FlairApp.swift
//  Flair
//
//  Created by Apprenant154 on 30/07/2026.
//

import SwiftUI

@main
struct FlairApp: App {
    
    @State private var appStore: AppStore
    
    init() {
        let defaults = UserDefaults.standard
        
        let favoriteTitles =
        defaults.stringArray(forKey: "userFavoriteWorks")
        ?? [works[0].title]
        
        let user = User(
            name: defaults.string(forKey: "userName") ?? "",
            image: defaults.string(forKey: "userImage") ?? "",
            ageRating: defaults.integer(forKey: "userAgeRating"),
            favoriteType: .movie,
            favoriteGenres: [.action],
            favoriteWorks: works.filter {
                favoriteTitles.contains($0.title)
            },
            statCharacter: 12,
            statOrganization: 6,
            statLocation: 4,
            statChronology: 10
        )
        
        _appStore = State(
            initialValue: AppStore(
                works: works,
                user: user
            )
        )
    }
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environment(appStore)
        }
    }
}

#Preview {
    @Previewable @State var appStore = AppStore(
        works: works,
        user: user
    )
    
    RootView()
        .environment(appStore)
}
