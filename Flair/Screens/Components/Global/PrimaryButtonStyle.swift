//
//  PrimaryButtonStyle.swift
//  Flair
//
//  Created by Apprenant154 on 09/08/2026.
//
import SwiftUI

/// Style principal des boutons
///
/// Utilise `Color.yellowPrimary` comme fond et `Color.textPrimary`
/// comme couleur de contenu.
///
///
/// Exemple :
/// ```
/// Button("Continuer", action: ...)
///     .buttonStyle(.primary)
///     .disabled(...)
/// ```
///
/// - Warning: Les marges externes doivent être définies par la vue appelante.
struct PrimaryButtonStyle: ButtonStyle {

    /// Variable d'environnement pour savoir si le bouton est activé ou non.
    @Environment(\.isEnabled) private var isEnabled

    /// Construit le style.
    ///
    /// - Parameter configuration: Contient le label et l'état pressé du bouton.
    /// - Returns: Le bouton stylisé selon le design system que l'on a mis en place sur Figma.
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.title3.bold())
            .foregroundStyle(Color.textPrimary)
            .frame(maxWidth: .infinity)
            .frame(height: 56)
            .background(Color.yellowPrimary)
            .clipShape(.rect(cornerRadius: 8))
            .opacity(isEnabled ? 1 : 0.5)
            .scaleEffect(configuration.isPressed ? 0.98 : 1)
            .animation(.smooth(duration: 0.15), value: configuration.isPressed)
    }
}

extension ButtonStyle where Self == PrimaryButtonStyle {
    /// Le bouton stylisé selon le design system que l'on a mis en place sur Figma
    static var primary: PrimaryButtonStyle { .init() }
}

#Preview {
    VStack(spacing: 0) {
        Button("Bouton") {
            // Action
        }
        .buttonStyle(.primary)
        .padding()
        .colorScheme(.dark)

        Button("Bouton") {
            // Action
        }
        .buttonStyle(.primary)
        .padding()
        .colorScheme(.dark)
        .disabled(true)

        Button("Bouton") {
            // Action
        }
        .buttonStyle(.primary)
        .padding()
        .colorScheme(.light)

        Button("Bouton") {
            // Action
        }
        .buttonStyle(.primary)
        .padding()
        .colorScheme(.light)
        .disabled(true)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(.black)
}
