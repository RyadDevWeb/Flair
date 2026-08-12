//
//  MultipleChoicesQuestionView.swift
//  Flair
//
//  Created by Apprenant154 on 10/08/2026.
//


import SwiftUI

struct MultipleChoicesQuestionView: View {
    @Environment(AppStore.self) private var appStore
    
    let question: Question
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: columns,
                spacing: 16
            ) {
                ForEach(question.answers, id: \.self) { answer in
                    Button {
                        appStore.onboarding.select(
                            answer,
                            for: question
                        )
                    } label: {
                        Text(answer)
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(
                        .onBoarding(
                            isSelected: appStore.onboarding.isSelected(
                                answer,
                                for: question
                            )
                        )
                    )
                }
            }
            .padding(.horizontal, 24)
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    MultipleChoicesQuestionView(
        question: Question.staticQuestions[3]
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
