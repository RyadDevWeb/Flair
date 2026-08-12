//
//  Untitled.swift
//  Flair
//
//  Created by Apprenant122 on 11/08/2026.
//



import SwiftUI

struct WorkDetailOrganizationDescription: View {
    
    let workOrganization: WorkOrganization
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16) {
            
            Text("Description")
                .font(.title2)
                .bold()
                .foregroundStyle(Color.textPrimary)
            
            Text(workOrganization.details)
                .font(.body)
                .foregroundStyle(.textPrimary)
                .lineSpacing(5)
        }
        .padding(20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.gray.opacity(0.1))
        }
    }
}


#Preview {
    
    WorkDetailOrganizationDescription(
        workOrganization: works[0].organizations[1]
    )
    .padding()
    .preferredColorScheme(.dark)
}
