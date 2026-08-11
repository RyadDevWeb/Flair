//
//  OnboardingSummaryView.swift
//  Flair
//
//  Created by Apprenant154 on 11/08/2026.
//

import SwiftUI

/// Affiche le récapitulatif des choix effectués durant l'onboarding
/// avant l'entrée définitive dans l'application.
struct OnboardingSummaryView: View {
    @Environment(AppStore.self) private var appStore
    
    private var onboarding: OnboardingViewModel {
        appStore.onboarding
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                if let character = onboarding.selectedCharacter {
                    ProfileSummaryCard(
                        character: character
                    )
                }
                
                VStack(spacing: 0) {
                    SummaryValueRow(
                        title: "Restriction",
                        value: ageRating
                    )
                    
                    Divider()
                    
                    SummaryValueRow(
                        title: "Format favori",
                        value: onboarding.selectedFavoriteType?.rawValue
                        ?? "Non renseigné"
                    )
                    
                    Divider()
                    
                    GenresSummarySection(
                        genres: onboarding.selectedGenres
                    )
                    
                    Divider()
                    
                    WorksSummarySection(
                        works: onboarding.selectedWorks
                    )
                }
                .background(Color.card)
                .clipShape(.rect(cornerRadius: 16)
                )
            }
        }
        .scrollIndicators(.hidden)
    }
    
    private var ageRating: String {
        guard let ageRating = onboarding.selectedAgeRating else {
            return "Non renseigné"
        }
        
        return ageRating == 0
        ? "Tout public"
        : "\(ageRating)+"
    }
}

#Preview {
    OnboardingSummaryView()
    .environment(
        AppStore(
            works: works,
            user: user
        )
    )
    .preferredColorScheme(.dark)
}
