//
//  WorkDetailTitle.swift
//  Flair
//
//  Created by Apprenant131 on 08/08/2026.
//

import SwiftUI

struct WorkDetailTitle: View {
    
    var text : String
    
    var body: some View {
        
        HStack {
            
            WorkQuoteBar()
                
            Text(text)
                .font(.custom("Archivo-Black", size: 22))
            
            Spacer()
            
        }
    }
}

#Preview {
    WorkDetailTitle(text: "Trailer")
}
