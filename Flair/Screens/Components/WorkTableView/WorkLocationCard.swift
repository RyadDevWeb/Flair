//
//  WorkLocationCard.swift
//  Flair
//
//  Created by imane on 08/08/2026.
//

import SwiftUI

struct WorkLocationCard: View {

    let workLocation: WorkLocation

    var body: some View {

        Image(workLocation.cover)
            .resizable()
            .frame(height: 260)
            .clipShape(.rect(cornerRadius: 8))
            .overlay {
                Color.black.opacity(0.8)
            }
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.borderCard, lineWidth: 0.5)
            }
            .overlay(alignment: .bottomLeading) {
                VStack(alignment: .leading, spacing: 16) {
                    WorkLocationBadge(workLocation: workLocation)
                    Text(workLocation.name)
                        .font(.custom("Archivo-Black", size: 20))
                        .foregroundStyle(.textPrimary)
                        .lineLimit(1)
                }
                .padding()

            }
            .frame(maxWidth: 213)

    }
}

#Preview {
    WorkLocationCard(workLocation: works[0].locations[0])
}
