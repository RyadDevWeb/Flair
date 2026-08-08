//
//  WorkDetailImage.swift
//  Flair
//
//  Created by imane on 07/08/2026.
//

import SwiftUI

struct WorkDetailImage: View {
    
    let work: Work

    var body: some View {
        
        ZStack(alignment: .bottomLeading) {
            
            Image(work.image)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .frame(height: 334)
                .clipped()
        
        }
    }
}

#Preview {
    WorkDetailImage(work: works[0])
}

#Preview {
    WorkDetailImage(work: works[3])
}

