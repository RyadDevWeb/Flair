//
//  FavoriteWorksQuestionViewModel.swift
//  Flair
//
//  Created by Apprenant154 on 11/08/2026.
//


import Foundation

struct FavoriteWorksQuestionViewModel {
    let works: [Work]
    let onboarding: OnboardingViewModel
    
    func select(_ work: Work) {
        onboarding.selectWork(work)
    }
    
    func isSelected(_ work: Work) -> Bool {
        onboarding.isWorkSelected(work)
    }
}
