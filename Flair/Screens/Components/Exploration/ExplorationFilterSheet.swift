//
//  ExplorationFilterSheet.swift
//  Flair
//
//  Created by Apprenant154 on 12/08/2026.
//

import SwiftUI

struct ExplorationFilterSheet: View {

    @Environment(\.dismiss) private var dismiss

    let viewModel: ExplorationViewModel

    var body: some View {
        NavigationStack {
            List {

                Section("Format") {
                    ForEach(Types.allCases, id: \.rawValue) { type in

                        Button {
                            viewModel.toggleType(type)
                        } label: {
                            HStack {
                                Text(type.rawValue)
                                    .foregroundStyle(.primary)

                                Spacer()

                                if viewModel
                                    .isTypeSelected(type) {
                                    Image(systemName: "checkmark")
                                        .foregroundStyle(.yellowPrimary)
                                }
                            }
                        }
                    }
                }

                Section("Genres") {
                    ForEach(Genre.allCases, id: \.rawValue) { genre in

                        Button {
                            viewModel.toggleGenre(genre)
                        } label: {
                            HStack {
                                Text(genre.rawValue)
                                    .foregroundStyle(.primary)

                                Spacer()

                                if viewModel
                                    .isGenreSelected(genre) {
                                    Image(systemName: "checkmark")
                                        .foregroundStyle(.yellowPrimary)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Filtres")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {

                ToolbarItem(placement: .topBarLeading) {
                    Button("Réinitialiser") {
                        viewModel.resetFilters()
                    }
                    .disabled(!viewModel.hasActiveFilters)
                }

                ToolbarItem(placement: .confirmationAction) {
                    Button("Terminé") {
                        dismiss()
                    }
                    .fontWeight(.bold)
                }
            }
            .tint(.yellowPrimary)
        }
    }
}
