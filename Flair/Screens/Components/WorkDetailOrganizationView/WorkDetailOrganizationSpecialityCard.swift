//
//  Untitled.swift
//  Flair
//
//  Created by Apprenant122 on 11/08/2026.
//


import SwiftUI

struct WorkDetailOrganizationSpecialityCard: View {
    
    let workOrganization: WorkOrganization
    
    var body: some View {
        
        HStack(spacing: 20) {
            
            ZStack {
                Circle()
                    .fill(Color.cyan.opacity(0.15))
                    .frame(width: 64, height: 64)
                
                Image(systemName: "map.fill")
                    .font(.title3)
                    .foregroundStyle(.cyan)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                
                Text("SPÉCIALITÉ PRINCIPALE")
                    .font(.caption)
                    .tracking(3)
                    .foregroundStyle(.secondary)
                
                Text(workOrganization.speciality)
                    .font(.title2)
                    .bold()
            }
            
            Spacer()
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.cyan.opacity(0.1))
        }
    }
}


#Preview {
    
    WorkDetailOrganizationSpecialityCard(
        workOrganization: works[0].organizations[1]
    )
    .padding()
    .preferredColorScheme(.dark)
}
