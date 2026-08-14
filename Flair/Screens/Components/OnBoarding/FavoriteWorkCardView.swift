//
//  FavoriteWorkCardView.swift
//  Flair
//
//  Created by Apprenant154 on 11/08/2026.
//

import SwiftUI

struct FavoriteWorkCardView: View {
    let work: Work
    let isSelected: Bool

    var body: some View {
        WorkCardComponentView(work: work)
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(
                    isSelected ? .yellow : .clear,
                    lineWidth: 3
                )
        }
        .overlay(alignment: .topTrailing) {
            if isSelected {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundStyle(.yellow)
                    .padding()
            }
        }
    }
}

#Preview {
    HStack(spacing: 24) {
        FavoriteWorkCardView(work: works[0], isSelected: false)
        FavoriteWorkCardView(work: works[0], isSelected: true)

        FavoriteWorkCardView(work: works[1], isSelected: true)

    }
    .padding()
    .frame(height: 220)
    .preferredColorScheme(.dark)

}
