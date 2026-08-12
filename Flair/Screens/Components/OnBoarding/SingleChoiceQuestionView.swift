//
//  SingleChoiceQuestionView.swift
//  Flair
//
//  Created by Apprenant154 on 10/08/2026.
//

import SwiftUI

struct SingleChoiceQuestionView: View {
    
    @Environment(AppStore.self) private var appStore
    
    let question: Question
    
    private var viewModel: SingleChoiceQuestionViewModel {
        SingleChoiceQuestionViewModel(
            question: question,
            onboarding: appStore.onboarding
        )
    }
    
    var body: some View {
        VStack(spacing: 24) {
            ForEach(viewModel.answers) { answer in
                
                let isSelected = viewModel.isSelected(answer)
                
                Button {
                    viewModel.select(answer)
                } label: {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(answer.title)
                        
                        if let subtitle = answer.subtitle {
                            Text(subtitle)
                                .foregroundStyle(
                                    isSelected
                                    ? Color.emptyGray
                                    : Color.textSecondary
                                )
                                .fontWeight(
                                    isSelected
                                    ? .bold
                                    : .regular
                                )
                        }
                    }
                    .frame(
                        maxWidth: .infinity,
                        alignment: .leading
                    )
                }
                .buttonStyle(
                    .onBoarding(
                        isSelected: isSelected
                    )
                )
            }
        }
        .padding(.horizontal, 24)
    }
}

#Preview {
    SingleChoiceQuestionView(
        question: Question.staticQuestions[1]
    )
    .environment(
        AppStore(
            works: works,
            user: user
        )
    )
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(.bg)
    .preferredColorScheme(.dark)
}

#Preview {
    SingleChoiceQuestionView(
        question: Question.staticQuestions[2]
    )
    .environment(
        AppStore(
            works: works,
            user: user
        )
    )
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(.bg)
    .preferredColorScheme(.dark)
}
