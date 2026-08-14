//
//  ExplorationView.swift
//  flair
//
//  Created by Apprenant131 on 29/07/2026.
//

import SwiftUI

struct ExplorationView: View {
    
    @Environment(AppStore.self) private var appStore
    
    @State private var viewModel = ExplorationViewModel()
    
    var body: some View {
        
        @Bindable var viewModel = viewModel
        
        let visibleWorks = viewModel.visibleWorks(
            from: appStore.works,
            user: appStore.user
        )
        
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                
                ExplorationHeaderView()
                
                ExplorationSummaryView(
                    worksCount: visibleWorks.count,
                    hasActiveFilters: viewModel.hasActiveFilters
                ) {
                    viewModel.isFilterPresented = true
                }
                
                Picker(
                    "Affichage",
                    selection: $viewModel.displayMode
                ) {
                    ForEach(ExplorationDisplayMode.allCases) { mode in
                        Text(mode.rawValue)
                            .tag(mode)
                    }
                }
                .pickerStyle(.segmented)
                
                switch viewModel.displayMode {
                    
                case .sections:
                    
                    ExplorationWorkSectionView(
                        title: "Pour vous",
                        subtitle: "Découvrez des œuvres selon vos goûts.",
                        works: viewModel.recommendedWorks(
                            from: appStore.works,
                            user: appStore.user
                        )
                    )
                    
                    ExplorationWorkSectionView(
                        title: "Reprendre l’exploration",
                        subtitle: "Reprenez là où vous en étiez.",
                        works: viewModel.resumeWorks(
                            user: appStore.user
                        )
                    )
                    
                    ExplorationWorkSectionView(
                        title: "Univers populaires",
                        subtitle: "Les incontournables de la communauté.",
                        works: viewModel.popularWorks(
                            from: appStore.works,
                            user: appStore.user
                        )
                    )
                    
                    ExplorationWorkSectionView(
                        title: "Nouveautés",
                        subtitle: "Découvrez les nouveautés de chaque service.",
                        works: viewModel.newWorks(
                            from: appStore.works,
                            user: appStore.user
                        )
                    )
                    
                    ExplorationWorkSectionView(
                        title: "Bientôt disponibles",
                        subtitle: "Restez informé des prochaines sorties.",
                        works: viewModel.upcomingWorks(
                            from: appStore.works,
                            user: appStore.user
                        )
                    )
                    
                    ExplorationCharacterSectionView(
                        characters: viewModel.charactersOfTheDay(
                            from: appStore.works,
                            user: appStore.user
                        )
                    )
                    
                case .allWorks:
                    
                    ExplorationWorksGridContentView(
                        works: visibleWorks
                    )
                }
            }
            .padding(.horizontal, 16)
            .padding(.top, 16)
            .padding(.bottom, 32)
        }
        .scrollIndicators(.hidden)
        .background(
            Color.bg
                .ignoresSafeArea()
        )
        .toolbar(.hidden, for: .navigationBar)
        .sheet(
            isPresented: $viewModel.isFilterPresented
        ) {
            ExplorationFilterSheet(
                viewModel: viewModel
            )
            .presentationDetents([
                .medium,
                .large
            ])
            .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    NavigationStack {
        ExplorationView()
    }
    .environment(
        AppStore(
            works: works,
            user: userLogged
        )
    )
}

#Preview {
    ExplorationView()
}
