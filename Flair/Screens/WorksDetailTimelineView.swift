    //
    //  WorksDetailTimelineView.swift
    //  Flair
    //
    //  Created by Apprenant131 on 29/07/2026.
    //

import SwiftUI

struct WorksDetailTimelineView: View {
    
    let workEvent: WorkEvent
    
        /// Texte utilisé lors du partage de l'événement.
    private var shareText: String {
        """
        \(workEvent.title)
        \(workEvent.period) • \(workEvent.year)
        
        \(workEvent.description)
        """
    }
    
    var body: some View {
        ScrollView {
            VStack(
                alignment: .leading,
                spacing: 24
            ) {
                
                    /// Grande image de l'événement
                    /// avec son titre et sa période.
                WorkEventHeroView(
                    workEvent: workEvent
                )
                
                    /// Année de l'événement.
                WorkEventYearCard(
                    year: workEvent.year
                )
                .padding(.horizontal, 16)
                
                    /// Description de l'événement.
                VStack(
                    alignment: .leading,
                    spacing: 16
                ) {
                    
                    WorkDetailTitle(
                        text: "Le récit"
                    )
                    
                    Divider()
                        .overlay(
                            Color.borderCard
                        )
                    
                    Text(workEvent.description)
                        .font(
                            .custom(
                                "Archivo-Regular",
                                size: 17
                            )
                        )
                        .foregroundStyle(
                            .textSecondary
                        )
                        .lineSpacing(7)
                        .multilineTextAlignment(
                            .leading
                        )
                }
                .padding(.horizontal, 16)
            }
            .padding(.bottom, 32)
        }
        .scrollIndicators(.hidden)
        .background {
            Color.bg
                .ignoresSafeArea()
        }
        .navigationTitle("Chronologie")
        .navigationBarTitleDisplayMode(.inline)
        .tint(.yellowPrimary)
        .toolbar {
            ToolbarItem(
                placement: .topBarTrailing
            ) {
                ShareLink(
                    item: shareText
                ) {
                    Image(
                        systemName:
                            "square.and.arrow.up"
                    )
                }
                .accessibilityLabel(
                    "Partager l'événement"
                )
            }
        }
        .toolbarBackground(
            Color.bg,
            for: .navigationBar
        )
        .toolbarBackground(
            .visible,
            for: .navigationBar
        )
    }
}

#Preview {
    NavigationStack {
        WorksDetailTimelineView(
            workEvent:
                works[0].datesChronology[0]
        )
    }
}
