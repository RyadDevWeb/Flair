//
//  AppStore.swift
//  Flair
//
//  Created by Apprenant154 on 09/08/2026.
//

import Observation

@Observable
@MainActor
final class AppStore {
    let works: [Work]
    
    var user: User
    var onboarding = OnboardingViewModel()
    
    init(
        works: [Work],
        user: User
    ) {
        self.works = works
        self.user = user
    }
    
    func completeOnboarding() {
        guard
            let character = onboarding.selectedCharacter,
            let ageRating = onboarding.selectedAgeRating,
            let favoriteType = onboarding.selectedFavoriteType
        else {
            return
        }
        
        user.name = character.name
        user.image = character.cover
        user.ageRating = ageRating
        user.favoriteType = favoriteType
        user.favoriteWorks = onboarding.selectedWorks
    }
}
