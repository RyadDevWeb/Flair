//
//  ExplorationHeaderView.swift
//  Flair
//
//  Created by Apprenant154 on 12/08/2026.
//


import SwiftUI

struct ExplorationHeaderView: View {

    @Environment(AppStore.self) private var appStore
    @Environment(\.colorScheme) private var colorScheme

    private var logoName: String {
        colorScheme == .dark
        ? "logoDark"
        : "logoLightMode"
    }

    var body: some View {
        HStack {

            Image(logoName)
                .resizable()
                .scaledToFit()
                .frame(width: 56, height: 56)

            Spacer()

            Text("Explorer")
                .font(
                    .custom(
                        "Archivo-Black",
                        size: 22
                    )
                )

            Spacer()

            Image(appStore.user.image)
                .resizable()
                .scaledToFill()
                .frame(width: 56, height: 56)
                .clipShape(.circle)
        }
    }
}


/// Nombre d'œuvres disponibles et bouton permettant
/// d'ouvrir les filtres.
struct ExplorationSummaryView: View {

    let worksCount: Int
    let hasActiveFilters: Bool
    let action: () -> Void

    var body: some View {
        HStack {
            (
                Text("+ \(worksCount) ")
                    .foregroundStyle(.yellowPrimary)
                +
                Text("œuvres cette semaine")
            )
            .font(.title3.bold())

            Spacer()

            Button(action: action) {
                ZStack(alignment: .topTrailing) {
                    Image(
                        systemName:
                            "line.3.horizontal.decrease"
                    )
                    .font(.title3)

                    if hasActiveFilters {
                        Circle()
                            .fill(.yellowPrimary)
                            .frame(width: 7, height: 7)
                    }
                }
            }
            .foregroundStyle(.yellowPrimary)
        }
    }
}
