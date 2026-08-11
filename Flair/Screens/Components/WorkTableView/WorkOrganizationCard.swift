//
//  WorkOrganizationCard.swift
//  Flair
//
//  Created by imane on 09/08/2026.
//

import SwiftUI

struct WorkOrganizationCard: View {

    let workOrganization: WorkOrganization

    var body: some View {

        // Image
        Image(workOrganization.cover)
            .resizable()
            .frame(maxWidth: 213)
            .frame(height: 260)
            .clipShape(.rect(cornerRadius: 8))

            // bordure + opacité
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.borderCard, lineWidth: 0.5)
                Color.black.opacity(0.4)
            }

            // Nom + résumé
            .overlay(alignment: .bottomLeading) {
                VStack(alignment: .leading, spacing: 8) {

                    // Nom
                    Text(workOrganization.team)
                        .font(.custom("Archivo-Black", size: 20))
                        .lineLimit(2)

                    // résumé
                    Text(workOrganization.role)
                        .font(.footnote)
                        .lineLimit(1)
                }
                .foregroundStyle(.textPrimary)
                .padding()

            }

    }
}

#Preview {
    WorkOrganizationCard(workOrganization: works[0].organizations[0])
}

#Preview {
    WorkOrganizationCard(workOrganization: works[1].organizations[0])
}

#Preview {
    WorkOrganizationCard(workOrganization: works[2].organizations[0])
}

#Preview {
    WorkOrganizationCard(workOrganization: works[3].organizations[0])
}

#Preview {
    WorkOrganizationCard(workOrganization: works[4].organizations[0])
}
