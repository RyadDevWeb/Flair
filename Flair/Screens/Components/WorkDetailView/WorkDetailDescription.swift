//
//  WorkDetailDescription.swift
//  Flair
//
//  Created by imane on 07/08/2026.
//

import SwiftUI

struct WorkDetailDescription: View {
    
    let work : Work
    
    var body: some View {
        Text(work.summary)
            .foregroundStyle(.textSecondary)
    }
}

#Preview {
    WorkDetailDescription(work: works[0])
}


#Preview {
    WorkDetailDescription(work: works[3])
}
