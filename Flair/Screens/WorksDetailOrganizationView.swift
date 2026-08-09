//
//  WorksDetailOrganizationView.swift
//  flair
//
//  Created by Apprenant131 on 29/07/2026.
//

import SwiftUI

struct WorksDetailOrganizationView: View {
    
    let workOrganization : WorkOrganization
    
    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    WorksDetailOrganizationView(workOrganization: works[0].organizations[0])
}
