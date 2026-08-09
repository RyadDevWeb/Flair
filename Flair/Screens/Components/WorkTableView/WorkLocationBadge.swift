//
//  WorkLocationBadge.swift
//  Flair
//
//  Created by imane on 08/08/2026.
//

import SwiftUI

struct WorkLocationBadge: View {
    
    let workLocation : WorkLocation
    private var viewModel : WorkTableViewModel {
        WorkTableViewModel(workLocation: workLocation)
    }
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 8)
            .overlay(
                HStack (spacing: 0) {
                    Label(viewModel.locationIsEmpty.uppercased(), systemImage: "mappin.circle")
                        .font(.caption2)
                        .foregroundStyle(.bg)
                        .bold()
                }
            )
            .frame(width: 140 , height: 24)
            .foregroundStyle(.yellowPrimary)
    }
}

#Preview {
    WorkLocationBadge(workLocation: works[0].locations[0])
}
