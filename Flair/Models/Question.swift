//
//  Question.swift
//  Flair
//
//  Created by Apprenant154 on 07/08/2026.
//

import Foundation

    /// Représente le type de question affichée durant l'onboarding.
    ///
    /// - Note: Chaque type permet à l'interface de déterminer
    ///   le composant à afficher et la manière de gérer la réponse.
enum QuestionKind {
    case character
    case ageRating
    case favoriteType
    case favoriteGenres
    case favoriteWorks
    case summary
}

    /// Représente une question affichée durant le parcours d'onboarding.
    ///
    /// Une question contient son contenu textuel, les réponses disponibles
    /// ainsi que son type afin de déterminer son comportement dans l'interface.
    ///
    /// - Note: Certaines questions, comme `.character`, ne possèdent pas
    ///   nécessairement de réponses sous forme de chaînes de caractères.
struct Question: Identifiable {
    
        /// Identifiant unique de la question.
    let id = UUID()
    
        /// Titre principal de la question.
    let name: String
    
        /// Texte secondaire affiché sous le titre principal.
        ///
        /// - Note: Peut être absent lorsque la question ne nécessite
        ///   pas de sous-titre.
    let subtitle: String?
    
        /// Texte d'aide permettant de préciser le rôle ou l'impact
        /// de la réponse choisie par l'utilisateur.
    let helperText: String?
    
        /// Liste des réponses disponibles pour la question.
        ///
        /// - Important: Le contenu et le format des réponses peuvent varier
        ///   selon le `QuestionKind`.
        ///
        /// - Note: Certaines réponses peuvent contenir un retour à la ligne
        ///   afin de séparer un titre d'un texte complémentaire.
    let answers: [String]
    
        /// Type de la question.
        ///
        /// Permet notamment de déterminer le composant SwiftUI à afficher
        /// et la logique de sélection à appliquer.
    let kind: QuestionKind
    
        /// Crée une nouvelle question d'onboarding.
        ///
        /// - Parameters:
        ///   - name: Titre principal de la question.
        ///   - subtitle: Texte secondaire optionnel.
        ///   - helperText: Texte d'aide optionnel affiché à l'utilisateur.
        ///   - answers: Réponses disponibles pour cette question.
        ///   - kind: Type de question permettant de déterminer son comportement.
    init(
        name: String,
        subtitle: String? = nil,
        helperText: String? = nil,
        answers: [String],
        kind: QuestionKind
    ) {
        self.name = name
        self.subtitle = subtitle
        self.helperText = helperText
        self.answers = answers
        self.kind = kind
    }
}

    // MARK: - Questions statiques de l'app

extension Question {
    
        /// Questions utilisées pour constituer le parcours d'onboarding.
        ///
        /// - Note: L'ordre des éléments dans ce tableau correspond
        ///   à l'ordre d'affichage des questions dans l'interface.
        ///
        /// - Important: Toute nouvelle question ajoutée ici doit posséder
        ///   un `QuestionKind` pris en charge par l'onboarding.
    static let staticQuestions: [Question] = [
        Question(
            name: "Qui incarneras-tu dans **Flair** ?",
            answers: [],
            kind: .character
        ),
        
        Question(
            name: "Certaines histoires sont plus **sombres** que d’autres...",
            subtitle: "Jusqu'où Flair peut-il t'emmener ?",
            helperText: "Ta sélection définit le niveau maximal des œuvres que l’application peut te proposer.",
            answers: [
                "Tout public",
                "12+",
                "14+",
                "16+",
                "18+",
            ],
            kind: .ageRating
        ),
        
        Question(
            name: "Quel format te fait oublier l'**heure** ?",
            helperText: "Choisis celui que tu souhaites retrouver en priorité dans Flair.",
            answers: [
                "Film\nUne histoire complète en une soirée",
                "Série\nPlusieurs épisodes pour s'attacher",
                "Animé\nDes univers qui repoussent les limites de l'imagination",
            ],
            kind: .favoriteType
        ),
        
        Question(
            name: "Quelles histoires attirent **ton flair** ?",
            helperText: "Choisis toutes les ambiances qui te donnent envie d'appuyer sur « Regarder ».",
            answers: Genre.allCases.map(\.rawValue),
            kind: .favoriteGenres
        ),
        
        Question(
            name: "Quelles œuvres ont déjà **laissé une trace** ?",
            helperText: "Choisis quelques œuvres que tu apprécies déjà. Cela aidera Flair à mieux comprendre tes goûts.",
            answers: [],
            kind: .favoriteWorks
        ),
        
        Question(
            name: "Ton flair commence à prendre **forme**.",
            helperText: "Tout est prêt pour te proposer des œuvres qui correspondent à tes envies.",
            answers: [],
            kind: .summary
        ),
    ]
}
