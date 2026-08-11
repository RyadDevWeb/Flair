//
//  RootView.swift
//  flair
//
//  Created by imane on 31/07/2026.
//

import SwiftUI

struct RootView: View {
    
        /// Indique si l'utilisateur a terminé l'onboarding.
        ///
        /// - Note: Cette valeur est conservée entre les lancements de l'application.
    @AppStorage("hasCompletedOnboarding")
    private var hasCompletedOnboarding = false
    
        /// Contrôle l'affichage temporaire du splash screen.
    @State private var showSplash = true
    
    var body: some View {
        Group {
            if showSplash {
                SplashScreenView()
            } else if hasCompletedOnboarding {
                ContentView()
            } else {
                /// WIP du OnBoarding
//                OnBoarding(
//                    questions: Question.staticQuestions,
//                    onCompleted: completeOnboarding
//                )
                OnboardingView()
            }
        }
        /// Passage du SplashScreen pour 2 secondes avec un léger fondu
        .task {
            guard showSplash else { return }
            
            try? await Task.sleep(for: .seconds(2))
            
            withAnimation {
                showSplash = false
            }
        }
    }
    
        /// Marque l'onboarding comme terminé.
        ///
        /// L'utilisateur accédera directement à l'application
        /// lors des prochains lancements.
    private func completeOnboarding() {
        hasCompletedOnboarding = true
    }
}

#Preview {
    RootView()
        .environment(
            AppStore(
                works: works,
                user: user
            )
        )
}
