//
//  BadgeColors.swift
//  Flair
//
//  Created by imane on 07/08/2026.
//

import SwiftUI

struct WorkTypeBadge: View {

    let work: Work
    
    private var viewModel : WorkDetailViewModel {
        WorkDetailViewModel(work: work)
    }

    var body: some View {

        RoundedRectangle(cornerRadius: 8)
            .overlay(
                Text(work.type.rawValue.uppercased())
                    .font(.caption2)
                    .foregroundStyle(.textPrimary)
                    .bold()
            )
            .frame(width: 54, height: 24)
            .foregroundStyle(viewModel.badgeColor(work.type))
    }
}

#Preview {
    WorkTypeBadge(work: works[0])
}
