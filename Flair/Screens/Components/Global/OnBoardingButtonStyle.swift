//
//  OnBoardingButtonStyle.swift
//  Flair
//
//  Created by Apprenant154 on 10/08/2026.
//

import SwiftUI

    /// Style des boutons de réponse de l'onboarding.
    ///
    /// Utilise `Color.white` comme fond par défaut et `Color.yellowPrimary`
    /// lorsque la réponse est sélectionnée.
    ///
    /// `Color.textPrimary` est utilisée comme couleur de contenu.
    ///
    ///
    /// Exemple :
    /// ```swift
    /// Button("12+") {
    ///     // Action
    /// }
    /// .buttonStyle(.onBoarding(isSelected: selectedAnswer == "12+"))
    /// ```
    ///
    /// Le style gère également :
    /// - l'état sélectionné ;
    /// - l'état désactivé ;
    /// - l'état pressé avec une légère réduction du bouton.
    ///
    /// - Warning: Les marges externes doivent être définies par la vue appelante.
struct OnBoardingButtonStyle: ButtonStyle {
    
        /// Variable d'environnement pour savoir si le bouton est activé ou non.
    @Environment(\.isEnabled) private var isEnabled
    
        /// Indique si la réponse représentée par le bouton est actuellement sélectionnée.
    let isSelected: Bool
    
        /// Construit le style.
        ///
        /// - Parameter configuration: Contient le label et l'état pressé du bouton.
        /// - Returns: Le bouton stylisé selon le design system que l'on a mis en place sur Figma.
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.custom("Archivo-Regular", size: 16))
            .foregroundStyle(.black)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.vertical, 19)
            .padding(.horizontal, 16)
            .background(
                isSelected
                ? Color.yellowPrimary
                : Color.white
            )
            .fontWeight(isSelected ? .bold : .regular)
            .opacity(isEnabled ? 1 : 0.5)
            .scaleEffect(configuration.isPressed ? 0.98 : 1)
            .animation(
                .smooth(duration: 0.15),
                value: configuration.isPressed
            )
    }
}

extension ButtonStyle where Self == OnBoardingButtonStyle {
    
        /// Le bouton de réponse de l'onboarding stylisé selon le design system
        /// que l'on a mis en place sur Figma.
        ///
        /// - Parameter isSelected: Indique si la réponse est actuellement sélectionnée.
        /// - Returns: Un `OnBoardingButtonStyle` configuré avec l'état de sélection fourni.
    static func onBoarding(
        isSelected: Bool
    ) -> OnBoardingButtonStyle {
        .init(isSelected: isSelected)
    }
}

#Preview {
    VStack(spacing: 16) {
        
        Button("Tout public") {
                // Action
        }
        .buttonStyle(.onBoarding(isSelected: false))
        
        Button("12+") {
                // Action
        }
        .buttonStyle(.onBoarding(isSelected: true))
        
        Button("16+") {
                // Action
        }
        .buttonStyle(.onBoarding(isSelected: false))
        .disabled(true)
        
        Button("18+") {
                // Action
        }
        .buttonStyle(.onBoarding(isSelected: true))
        .disabled(true)
    }
    .padding(24)
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .preferredColorScheme(.dark)
}
