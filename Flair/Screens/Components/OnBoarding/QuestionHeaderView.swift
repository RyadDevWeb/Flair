//
//  QuestionHeaderView.swift
//  Flair
//
//  Created by Apprenant154 on 10/08/2026.
//


import SwiftUI

/// Affiche le titre d'une question de l'onboarding,
/// ses informations complémentaires et sa progression.
struct QuestionHeaderView: View {
    let question: Question
    let currentIndex: Int
    let totalCount: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            QuestionViewModel(question: question)
                .normalizedQuestion
                .font(.custom("Archivo-Black", size: 24))
                .textCase(.uppercase)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.trailing, 70)
                .overlay(alignment: .bottomTrailing) {
                    progress
                }

            if let subtitle = question.subtitle {
                Text(subtitle)
                    .font(.custom("Archivo-Bold", size: 15))
                    .textCase(.uppercase)
            }

            if let helperText = question.helperText {
                Text(helperText)
                    .font(.custom("Archivo-Regular", size: 12))
                    .foregroundStyle(.secondary)
            }
        }
    }

    private var progress: some View {
        HStack(spacing: 4) {
            Text("\(currentIndex + 1)")
                .foregroundStyle(Color.yellowPrimary)

            Text("/ \(totalCount)")
                .foregroundStyle(Color.textPrimary)
        }
        .font(.custom("Archivo-Black", size: 24))
        .monospacedDigit()
        .fixedSize()
    }
}

#Preview {
    QuestionHeaderView(question: Question.staticQuestions[4], currentIndex: 0, totalCount: 6)
}
