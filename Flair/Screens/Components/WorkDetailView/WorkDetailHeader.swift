//
//  WorkDetailHeader.swift
//  Flair
//
//  Created by imane on 07/08/2026.
//

import SwiftUI

struct WorkDetailHeader: View {

    let work: Work
    private var viewModel : WorkDetailViewModel {
        WorkDetailViewModel(work: work)
    }

    var body: some View {
        
        HStack (spacing : 8) {
            
            WorkQuoteBar()
            
            VStack(alignment: .leading, spacing: 6) {
                Text(work.title)
                    .font(.custom("Archivo-Black", size: 22))
                    .foregroundStyle(.textPrimary)
                    .lineLimit(2)
                
                Text(viewModel.genresSeparator(work.genres) ?? "")
                    .font(.caption2)
                    .foregroundStyle(.textSecondary)
            }
            
            Spacer()
            
            WorkAgeRating(work: work)
        }
    }
}

#Preview {
    WorkDetailHeader(work: works[0])
}

#Preview {
    WorkDetailHeader(work: works[3])
}
