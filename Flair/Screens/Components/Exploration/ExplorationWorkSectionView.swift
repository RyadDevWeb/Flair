//
//  ExplorationWorkSectionView.swift
//  Flair
//
//  Created by Apprenant154 on 12/08/2026.
//


import SwiftUI

struct ExplorationWorkSectionView: View {

    let title: String
    let subtitle: String
    let works: [Work]

    var body: some View {
        if !works.isEmpty {
            VStack(
                alignment: .leading,
                spacing: 12
            ) {

                HStack(alignment: .bottom) {

                    HStack(spacing: 8) {
                        RoundedRectangle(
                            cornerRadius: 2
                        )
                        .fill(.yellowPrimary)
                        .frame(width: 4)

                        VStack(
                            alignment: .leading,
                            spacing: 0
                        ) {
                            Text(title)
                                .font(
                                    .custom(
                                        "Archivo-Black",
                                        size: 22
                                    )
                                )

                            Text(subtitle)
                                .font(.system(size: 13))
                                .foregroundStyle(
                                    .textSecondary
                                )
                        }
                    }

                    Spacer()

                    NavigationLink {
                        WorksGridView(
                            title: title,
                            works: works
                        )
                    } label: {
                        Text("voir plus")
                            .font(
                                .system(
                                    size: 13,
                                    weight: .heavy
                                )
                            )
                            .foregroundStyle(
                                .yellowPrimary
                            )
                    }
                }

                ScrollView(.horizontal) {
                    LazyHStack(spacing: 12) {
                        ForEach(
                            Array(works.prefix(8))
                        ) { work in
                            NavigationWorkCardView(
                                work: work
                            )
                            .frame(width: 176)
                        }
                    }
                }
                .scrollIndicators(.hidden)
            }
        }
    }
}
