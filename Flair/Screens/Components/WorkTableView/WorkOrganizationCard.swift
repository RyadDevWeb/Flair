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
        
        Image(workOrganization.cover)
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
                VStack(alignment: .leading, spacing: 8) {
                    Text(workOrganization.team)
                        .font(.custom("Archivo-Black", size: 20))
                        .foregroundStyle(.textPrimary)
                        .lineLimit(1)
                    
                    Text(workOrganization.role)
                        .font(.footnote)
                        .foregroundStyle(.textSecondary)
                        .lineLimit(1)
                }
                .padding()
                
            }
            .frame(maxWidth: 213)
    }
}

#Preview {
    WorkOrganizationCard(workOrganization : works[0].organizations[0])
}
