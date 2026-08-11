//
//  OnboardingViewModel.swift
//  Flair
//
//  Created by Apprenant154 on 10/08/2026.
//

import Foundation
import Observation

/// Gère l'état et les sélections effectuées par l'utilisateur
/// au cours du parcours d'onboarding.
@Observable
@MainActor
final class OnboardingViewModel {

    // MARK: - Sélections

    /// Personnage sélectionné par l'utilisateur.
    private(set) var selectedCharacter: WorkCharacter?

    /// Restriction d'âge sélectionnée par l'utilisateur.
    private(set) var selectedAgeRating: Int?

    /// Média favori sélectionné par l'utilisateur.
    private(set) var selectedFavoriteType: Types?

    /// Genres sélectionnés par l'utilisateur.
    private(set) var selectedGenres: [Genre] = []

    /// Oeuvres sélectionnées par l'utilisateur.
    private(set) var selectedWorks: [Work] = []

    // MARK: Sélection du perso

    /// Sélectionne le personnage choisi par l'utilisateur.
    ///
    /// - Parameter character: Le personnage à enregistrer comme sélection actuelle.
    func selectCharacter(_ character: WorkCharacter) {
        selectedCharacter = character
    }

    // MARK: - Sélection de la question

    /// Met à jour la sélection associée à une question de l'onboarding.
    ///
    /// Pour une question à choix multiple, sélectionner une réponse déjà présente
    /// la retire de la sélection.
    ///
    /// - Parameters:
    ///   - answer: La réponse sélectionnée.
    ///   - question: La question à laquelle appartient la réponse.
    func select(_ answer: String, for question: Question) {
        switch question.kind {

        case .ageRating:
            selectedAgeRating = Int(answer.filter(\.isNumber)) ?? 0

        case .favoriteType:
            selectedFavoriteType = Types(
                rawValue: answer
            )

        case .favoriteGenres:
            guard let genre = Genre(rawValue: answer) else { return }

            if selectedGenres.contains(genre) {
                selectedGenres.removeAll { $0 == genre }
            } else {
                selectedGenres.append(genre)
            }

        case .character, .favoriteWorks, .summary:
            break
        }
    }

    /// Indique si une réponse est actuellement sélectionnée
    /// pour la question donnée.
    ///
    /// - Parameters:
    ///   - answer: La réponse à vérifier.
    ///   - question: La question concernée.
    /// - Returns: `true` si la réponse est sélectionnée, sinon `false`.
    func isSelected(_ answer: String, for question: Question) -> Bool {
        switch question.kind {

        case .ageRating:
            let value = Int(answer.filter(\.isNumber)) ?? 0

            return selectedAgeRating == value

        case .favoriteType:
            return selectedFavoriteType?.rawValue == answer

        case .favoriteGenres:
            guard let genre = Genre(rawValue: answer) else { return false }

            return selectedGenres.contains(genre)

        case .character, .favoriteWorks, .summary:
            return false
        }
    }

    // MARK: - Sélection d'une oeuvre

    /// Ajoute ou retire une œuvre de la sélection de l'utilisateur.
    ///
    /// Si l'œuvre est déjà sélectionnée, elle est retirée. (Sinon cela créé un duplicata)
    /// Sinon, elle est ajoutée.
    ///
    /// - Parameter work: L'œuvre dont la sélection doit être inversée.
    func selectWork(_ work: Work) {
        if selectedWorks.contains(where: { $0.id == work.id }) {
            selectedWorks.removeAll { $0.id == work.id }
        } else {
            selectedWorks.append(work)
        }
    }

    /// Indique si une œuvre fait partie de la sélection actuelle.
    ///
    /// - Parameter work: L'œuvre à vérifier.
    /// - Returns: `true` si l'œuvre est sélectionnée, sinon `false`.
    func isWorkSelected(_ work: Work) -> Bool {
        selectedWorks.contains { $0.id == work.id }
    }
}
