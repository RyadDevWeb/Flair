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

        RoundedRectangle(cornerRadius: 12)
            .overlay(
                Text(work.type.rawValue.uppercased())
                    .font(.caption2)
                    .foregroundStyle(.white)
                    .bold()
            )
            .frame(width: 48, height: 18)
            .foregroundStyle(viewModel.badgeColor(work.type))
    }
}

#Preview {
    WorkTypeBadge(work: works[0])
}
