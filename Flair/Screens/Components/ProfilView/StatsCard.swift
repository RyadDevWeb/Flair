//
//  ProfilView.swift
//  Flair
//
//  Created by Apprenant151 on 12/08/2026.
//

import SwiftUI

struct StatsCard: View {
    
    var nbr: Int
    var detail: String
    var backgroundColor: Color
    
    var body: some View {
        
        VStack(spacing: 4) {
            Text(String(nbr))
                .font(.largeTitle)
                .bold()
                .foregroundStyle(backgroundColor)
            
            Text(detail)
                .font(.title3)
                .bold()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 85)
        .padding(.vertical, 8)
        .background {
            RoundedRectangle(cornerRadius: 8)
                .fill(backgroundColor).opacity(0.2)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(backgroundColor, lineWidth: 0.5)
                }
        }
    }
}

#Preview {
    StatsCard(nbr: 7, detail: "test", backgroundColor: .accent)
}
