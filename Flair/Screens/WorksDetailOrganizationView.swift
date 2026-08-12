//
//  WorksDetailOrganizationView.swift
//  Flair
//

import SwiftUI

struct WorksDetailOrganizationView: View {
    
    let workOrganization: WorkOrganization
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 20) {
                
                WorkDetailOrganizationBadge(
                    workOrganization: workOrganization
                )
                
                WorkDetailOrganizationRoleCard(
                    workOrganization: workOrganization
                )
                
                WorkDetailOrganizationSpecialityCard(
                    workOrganization: workOrganization
                )
                
                WorkDetailOrganizationStaffCard(
                    workOrganization: workOrganization
                )
                
                WorkDetailOrganizationDescription(
                    workOrganization: workOrganization
                )
            }
            .padding()
        }
        .background(Color.black)
        .preferredColorScheme(.dark)
    }
}



#Preview {
    
    WorksDetailOrganizationView(
        workOrganization: works[0].organizations[1]
    )
}
