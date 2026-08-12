//
//  Untitled.swift
//  Flair
//
//  Created by Apprenant122 on 11/08/2026.
//


import SwiftUI

struct WorkDetailOrganizationStaffCard: View {
    
    let workOrganization: WorkOrganization
    
    var body: some View {
        
        HStack(spacing: 20) {
            
            ZStack {
                Circle()
                    .fill(Color.red.opacity(0.15))
                    .frame(width: 64, height: 64)
                
                Image(systemName: "person.3.fill")
                    .font(.title3)
                    .foregroundStyle(.red)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                
                Text("EFFECTIF ESTIMÉ")
                    .font(.caption)
                    .tracking(3)
                    .foregroundStyle(.secondary)
                
                Text("~\(workOrganization.staff) membres")
                    .font(.title2)
                    .bold()
            }
            
            Spacer()
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.red.opacity(0.1))
        }
    }
}


#Preview {
    
    WorkDetailOrganizationStaffCard(
        workOrganization: works[0].organizations[1]
    )
    .padding()
    .preferredColorScheme(.dark)
}
