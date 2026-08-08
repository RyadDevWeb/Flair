//
//  WorkDetailButtons.swift
//  Flair
//
//  Created by imane on 07/08/2026.
//

import SwiftUI

struct WorkDetailButtons: View {
    
    var body: some View {
        
        HStack (alignment: .center, spacing: 24) {
            
            // Partager
            Button {
                
            } label: {
                VStack (spacing : 3) {
                    Image(systemName: "square.and.arrow.up")
                    Text("Partager")
                }
            }
            
            // Favoris
            Button {
                
            } label: {
                VStack (spacing : 3) {
                    Image(systemName: "heart")
                    Text("Favoris")
                }
            }
            
        }
        .font(.headline)
        .bold()
        
    }
}

#Preview {
    WorkDetailButtons()
}
