//
//  WorkEventCard.swift
//  Flair
//
//  Created by imane on 09/08/2026.
//

import SwiftUI

struct WorkEventCard: View {
    
    let workEvent: WorkEvent
    
    var body: some View {
        
        Image(workEvent.cover)
            .resizable()
            .frame(height: 260)
            .clipShape(.rect(cornerRadius: 8))
            .overlay {
                Color.black.opacity(0.8)
            }
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.borderCard, lineWidth: 0.5)
            }
            .overlay(alignment: .bottomLeading) {
                VStack(alignment: .leading, spacing: 16) {
                    Text(String(workEvent.year))
                        .font(.custom("Archivo-Black", size: 44))
                        .foregroundStyle(.yellowPrimary)
                    
                    Text(workEvent.title)
                        .font(.custom("Archivo-Black", size: 20))
                        .foregroundStyle(.textPrimary)
                        .lineLimit(1)
                    
                    Text(workEvent.period)
                        .foregroundStyle(.textSecondary)
                        .font(.footnote)
                        .lineLimit(1)
                }
                .padding()
                
            }
            .frame(maxWidth: .infinity)
    }
}

#Preview {
    WorkEventCard(workEvent : works[0].datesChronology[0])
}
