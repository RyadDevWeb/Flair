//
//  WorksDetailOrganizationView.swift
//  flair
//
//  Created by ryad Apprenant131 on 29/07/2026.
//

import SwiftUI

struct WorkDetailOrganizationBadge: View {
    
    let workOrganization: WorkOrganization
    
    var body: some View {
        
        VStack(spacing: 28) {
            
            // Image de l'organisation
            Image(workOrganization.imageTeam)
                .resizable()
                .scaledToFill()
                .frame(width: 320, height: 250)
                .clipShape(.rect(cornerRadius:16))
                .overlay {
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(
                            Color.white.opacity(0.5),
                            lineWidth: 0.5
                        )
                }
            
            
            VStack(spacing: 14) {
                
                // Rôle
                Text(workOrganization.role.uppercased())
                    .font(.caption)
                    .tracking(3)
                    .foregroundStyle(Color.yellowPrimary)
                
                
                // Nom de l'organisation
                Text(workOrganization.team)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.primary)
                
                
                // Description
                Text(workOrganization.details)
                    .font(.body)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                    .lineSpacing(5)
                    .lineLimit(4)
            }
        }
        .padding(30)
        .background {
            //rectangle exterieur
            RoundedRectangle(cornerRadius: 16)
                .fill(.black)
        }
        .overlay {
            RoundedRectangle(cornerRadius: 16)
                .stroke(
                    Color.card,
                    lineWidth: 0.5
                )
        }
    }
}



#Preview {
    ZStack {
        Color.bg
        
        WorkDetailOrganizationBadge(
            workOrganization: works[4].organizations[0]
        )
        .background(Color.black)
        .preferredColorScheme(.dark)
    } .ignoresSafeArea()
}
