//
//  SingleChoiceQuestionViewModel.swift
//  Flair
//
//  Created by Apprenant154 on 11/08/2026.
//

import Foundation

/// Prépare les données nécessaires à l'affichage et à la gestion d'une question à choix unique durant l'onboarding.
struct SingleChoiceQuestionViewModel {

    /// Question actuellement affichée.
    let question: Question

    /// État global de l'onboarding utilisé pour enregistrer et vérifier la réponse sélectionnée.
    let onboarding: OnboardingViewModel

    /// Réponses disponibles pour la question, adaptées au format attendu par la vue.
    var answers: [SingleChoiceAnswerViewModel] {
        question.answers.map {
            SingleChoiceAnswerViewModel(answer: $0)
        }
    }

    /// Sélectionne une réponse pour la question courante.
    ///
    /// - Parameter answer: La réponse choisie par l'utilisateur.
    func select(_ answer: SingleChoiceAnswerViewModel) {
        onboarding.select(
            answer.value,
            for: question
        )
    }

    /// Indique si une réponse correspond à la sélection actuelle.
    ///
    /// - Parameter answer: La réponse à vérifier.
    /// - Returns: `true` si la réponse est sélectionnée, sinon `false`.
    func isSelected(_ answer: SingleChoiceAnswerViewModel) -> Bool {
        onboarding.isSelected(
            answer.value,
            for: question
        )
    }
}

/// Représente une réponse à choix unique sous une forme directement exploitable par l'interface.
struct SingleChoiceAnswerViewModel: Identifiable {

    /// Valeur brute de la réponse provenant du modèle `Question`.
    let answer: String

    /// Identifiant stable de la réponse.
    var id: String {
        answer
    }

    /// Première ligne de la réponse, utilisée comme titre principal.
    var title: String {
        answer.components(separatedBy: "\n").first ?? answer
    }

    /// Texte complémentaire situé après la première ligne.
    ///
    /// Retourne `nil` lorsqu'aucun sous-titre n'est présent.
    var subtitle: String? {
        
        /// - Note: `components(separatedBy:)` est une méthode de `String` qui renvoie les différentes parties de la chaîne.
        let parts = answer.components(separatedBy: "\n")

        guard parts.count > 1 else {
            return nil
        }

        /// - Returns: Toutes les parties sauf la première (considérée comme le titre)
        return parts.dropFirst().joined(separator: "\n")
    }

    /// Valeur utilisée pour identifier la réponse lors de sa sélection.
    var value: String {
        title
    }
}
