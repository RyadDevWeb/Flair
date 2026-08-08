//
//  WorkAgeRating.swift
//  Flair
//
//  Created by imane on 07/08/2026.
//

import SwiftUI

struct WorkAgeRating: View {

    let work: Work

    var body: some View {

        Text("+" + String(work.ageRating))
            .frame(maxWidth: 47)
            .frame(height: 26)
            .foregroundStyle(.bg)
            .bold()
            .background(
                Color.textSecondary
                    .cornerRadius(8)
            )

    }
}

#Preview {
    WorkAgeRating(work: works[0])
}

#Preview {
    WorkAgeRating(work: works[3])
}
