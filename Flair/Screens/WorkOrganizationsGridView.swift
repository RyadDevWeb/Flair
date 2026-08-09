//
//  WorkOrganizationsGridView.swift
//  Flair
//
//  Created by Imane on 09/08/2026.
//

import SwiftUI

struct WorkOrganizationsGridView: View {
    
    let workOrganizations : [WorkOrganization]
    
    let colums = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        
        ScrollView {
            
            LazyVGrid(columns: colums, spacing: 16) {
                ForEach(workOrganizations) {
                    organization in
                    WorkOrganizationCard(workOrganization: organization)
                }
            }
            
        } .scrollIndicators(.hidden)
        
    }
}

#Preview {
    WorkOrganizationsGridView(workOrganizations: works[0].organizations)
}
