//
//  WorkLocationCard.swift
//  Flair
//
//  Created by imane on 08/08/2026.
//

import SwiftUI

struct WorkLocationCard: View {

    let workLocation: WorkLocation

    var body: some View {

        // Image
        Image(workLocation.cover)
            .resizable()
            .frame(height: 260)
            .clipShape(.rect(cornerRadius: 8))
        
            // bordure + opacité
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.borderCard, lineWidth: 0.5)
                Color.black.opacity(0.4)
            }
        
            // Badge + titre
            .overlay(alignment: .bottomLeading) {
                VStack(alignment: .leading, spacing: 16) {
                    Text(workLocation.name.uppercased())
                        .font(.custom("Archivo-Black", size: 20))
                        .foregroundStyle(.textPrimary)
                        .lineLimit(2)
                    
                    WorkLocationBadge(workLocation: workLocation)
                    
                }
                .padding()
            }
            .frame(maxWidth: 213)
    }
}

#Preview {
    WorkLocationCard(workLocation: works[0].locations[0])
}

#Preview {
    WorkLocationCard(workLocation: works[1].locations[0])
}

#Preview {
    WorkLocationCard(workLocation: works[2].locations[0])
}

#Preview {
    WorkLocationCard(workLocation: works[4].locations[0])
}
