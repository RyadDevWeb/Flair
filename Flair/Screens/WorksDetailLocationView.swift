//
//  WorksDetailLocationView.swift
//  flair
//
//  Created by imane on 29/07/2026.
//

import SwiftUI

struct WorksDetailLocationView: View {
        
    let workLocation: WorkLocation

    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 24) {
                
                // Image
                Image(workLocation.image)
                    .resizable()
                    .frame(height: 334)
                    .overlay(alignment: .bottomLeading) {
                        WorkLocationBadge(workLocation: workLocation)
                            .padding(20)
                    }
                
                // Titre
                VStack(alignment: .leading, spacing: 24) {
                    
                    Text(workLocation.name.uppercased())
                        .font(.custom("Archivo-Black", size: 22))
                        .foregroundStyle(.yellowPrimary)
                    
                    // Citation
                    HStack(alignment: .center) {
                        Image(systemName: "quote.opening")
                            .foregroundStyle(.yellowPrimary)
                        
                        Text(workLocation.summary)
                            .italic()
                    }
                    
                    // Description
                    Text(workLocation.details)
                        .foregroundStyle(.textSecondary)
                        .lineSpacing(6)
                    
                }.padding(.horizontal, 16)
                
                Spacer()
                
            }
        }
        .ignoresSafeArea()
        .scrollIndicators(.hidden)
        .onAppear{            
            user.statLocation += 1
            
            print(user.statLocation)
        }
    }
}

#Preview {
    WorksDetailLocationView(workLocation: works[0].locations[0])
        .environment(user)
}
