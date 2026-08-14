import Foundation
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
        user.image = character.identityImage
        user.ageRating = ageRating
        user.favoriteType = favoriteType
        user.favoriteGenres = onboarding.selectedGenres
        user.favoriteWorks = onboarding.selectedWorks
        
        saveUser()
    }
    
    private func saveUser() {
        let defaults = UserDefaults.standard
        
        defaults.set(user.name, forKey: "userName")
        defaults.set(user.image, forKey: "userImage")
        defaults.set(user.ageRating, forKey: "userAgeRating")
        
        defaults.set(
            user.favoriteWorks.map(\.title),
            forKey: "userFavoriteWorks"
        )
    }
}
