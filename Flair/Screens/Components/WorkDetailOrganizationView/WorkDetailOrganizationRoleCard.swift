//
//  WorkDetailOrganizationRoleCard.swift
//  Flair
//
//  Created by ryad Apprenant122 on 11/08/2026.
//


import SwiftUI

struct WorkDetailOrganizationRoleCard: View {
    
    let workOrganization: WorkOrganization
    
    var body: some View {
        
        HStack(spacing: 20) {
            
            // Cercle avec icône
            ZStack {
                Circle()
                    .fill(Color.yellowPrimary.opacity(0.2))
                    .frame(width: 64, height: 64)
                
                Image(systemName: "shield.fill")
                    .font(.title3)
                    .foregroundStyle(Color.yellowPrimary)
            }
            
            
            // Textes
            VStack(alignment: .leading, spacing: 8) {
                
                Text("Chef")
                    .font(.caption)
                    .tracking(3)
                    .foregroundStyle(.secondary)
                
                Text(workOrganization.role)
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.primary)
            }
            
            Spacer()
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.yellowPrimary.opacity(0.1))
        }
        
    }
}


// MARK: - Preview

#Preview {
    
    WorkDetailOrganizationRoleCard(
        workOrganization: works[0].organizations[0]
    )
    .padding()
    .background(Color.black)
    .preferredColorScheme(.dark)
}
