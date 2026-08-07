//
//  Question.swift
//  Flair
//
//  Created by Apprenant154 on 07/08/2026.
//

import Foundation

struct Question: Identifiable {
    let id = UUID()

    let name: String
    /// Représente le titre de la question pour le quiz

    let answers: [String]
    /// Représente un tableau de réponses pour cette question

    static let exampleQuestions = [
        Question(
            name: "Question ?",
            answers: [
                "Réponse 1", "Réponse 2", "Réponse 3", "Réponse 4", "Réponse 5",
            ]
        ),
        Question(
            name: "Question ?",
            answers: [
                "Réponse 1", "Réponse 2", "Réponse 3", "Réponse 4", "Réponse 5",
            ]
        ),
        Question(
            name: "Question ?",
            answers: [
                "Réponse 1", "Réponse 2", "Réponse 3", "Réponse 4", "Réponse 5",
            ]
        ),
        Question(
            name: "Question ?",
            answers: [
                "Réponse 1", "Réponse 2", "Réponse 3", "Réponse 4", "Réponse 5",
            ]
        ),
        Question(
            name: "Question ?",
            answers: [
                "Réponse 1", "Réponse 2", "Réponse 3", "Réponse 4", "Réponse 5",
            ]
        ),
        Question(
            name: "Question ?",
            answers: [
                "Réponse 1", "Réponse 2", "Réponse 3", "Réponse 4", "Réponse 5",
            ]
        ),
    ]
}
