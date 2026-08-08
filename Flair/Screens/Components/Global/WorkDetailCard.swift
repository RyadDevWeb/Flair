//
//  WorkSeasonEpisodeInfo.swift
//  Flair
//
//  Created by imane on 07/08/2026.
//

import SwiftUI

struct WorkDetailCard: View {

    let nbr: String
    let detail: String
    
    private var viewModel : WorkDetailViewModel {
        WorkDetailViewModel(work: work)
    }

    let work: Work

    var body: some View {

        VStack(spacing: 4) {
            Text(nbr)
                .font(.largeTitle)
                .bold()

            Text(detail)
                .font(.title3)
                .bold()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 85)
        .padding(.vertical, 8)
        .background {
            RoundedRectangle(cornerRadius: 8)
                .fill(viewModel.badgeColor(work.type).opacity(0.2))
                .stroke(viewModel.badgeColor(work.type), lineWidth: 0.5)
        }

    }

}

#Preview {
    WorkDetailCard(
        nbr: "2",
        detail: "Saisons",
        work: works[0]
    )
}
