//
//  OnBoarding.swift
//  Flair
//
//  Created by Apprenant154 on 04/08/2026.


import SwiftUI

struct OnBoarding: View {
    @Environment(AppStore.self) private var appStore
    
    let questions: [Question]
    let onCompleted: () -> Void
    
    @State private var currentQuestionIndex = 0
    @State private var navigationDirection: NavigationDirection = .forward
    
    private var question: Question {
        questions[currentQuestionIndex]
    }
    
    private var canSkip: Bool {
        question.kind == .favoriteWorks
    }
    
    private var canContinue: Bool {
        switch question.kind {
        case .character:
            appStore.onboarding.selectedCharacter != nil
            
        case .ageRating:
            appStore.onboarding.selectedAgeRating != nil
            
        case .favoriteType:
            appStore.onboarding.selectedFavoriteType != nil
            
        case .favoriteGenres:
            !appStore.onboarding.selectedGenres.isEmpty
            
        case .favoriteWorks:
            !appStore.onboarding.selectedWorks.isEmpty
            
        case .summary:
            true
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            OnBoardingHeaderView(
                count: questions.count,
                currentIndex: currentQuestionIndex,
                showsBackButton: currentQuestionIndex > 0,
                onBack: goBack
            )
            
            QuestionHeaderView(
                question: question,
                currentIndex: currentQuestionIndex,
                totalCount: questions.count
            )
            
            switch question.kind {
            case .character:
                CharacterQuestionView()
                
            case .ageRating, .favoriteType:
                SingleChoiceQuestionView(
                    question: question
                )
                
            case .favoriteGenres:
                MultipleChoicesQuestionView(
                    question: question
                )
                
            case .favoriteWorks:
                FavoriteWorksQuestionView()
                
            case .summary:
                OnboardingSummaryView()
            }
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .top
        )
        .padding(.horizontal)
        .padding(.top)
        .scrollEdgeEffectStyle(
            .soft,
            for: .bottom
        )
        .safeAreaBar(edge: .bottom, spacing: 0) {
            VStack(spacing: 8) {
                if question.kind == .summary {
                    Button(
                        "Entrer dans Flair",
                        action: finishOnboarding
                    )
                    .buttonStyle(.primary)
                } else {
                    Button(
                        "Continuer",
                        action: continueOnboarding
                    )
                    .buttonStyle(.primary)
                    .disabled(!canContinue)
                    
                    if canSkip {
                        Button(
                            "Passer pour le moment",
                            action: continueOnboarding
                        )
                        .foregroundStyle(.yellowPrimary)
                    }
                }
            }
            .padding(.horizontal)
            .padding(.top, 8)
        }
    }
    
    private func continueOnboarding() {
        guard currentQuestionIndex < questions.count - 1 else {
            return
        }
        
        navigationDirection = .forward
        
        withAnimation(.smooth(duration: 0.35)) {
            currentQuestionIndex += 1
        }
    }
    
    private func goBack() {
        guard currentQuestionIndex > 0 else {
            return
        }
        
        navigationDirection = .backward
        
        withAnimation(.smooth(duration: 0.35)) {
            currentQuestionIndex -= 1
        }
    }
    
        /// Enregistre les choix effectués durant l'onboarding
        /// puis indique que celui-ci est terminé.
private func finishOnboarding() {
    guard appStore.completeOnboarding() else { return }
    onCompleted()
}

private enum NavigationDirection {
    case forward
    case backward
}

#Preview {
    OnBoarding(
        questions: Question.staticQuestions,
        onCompleted: {}
    )
    .environment(
        AppStore(
            works: works,
            user: user
        )
    )
    .frame(
        maxWidth: .infinity,
        maxHeight: .infinity
    )
    .preferredColorScheme(.dark)
}

#Preview {
    OnBoarding(
        questions: Question.staticQuestions,
        onCompleted: {}
    )
    .environment(
        AppStore(
            works: works,
            user: user
        )
    )
    .frame(
        maxWidth: .infinity,
        maxHeight: .infinity
    )
    .preferredColorScheme(.light)
}
