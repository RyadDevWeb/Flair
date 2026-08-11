//
//  WorkLocationBadge.swift
//  Flair
//
//  Created by imane on 08/08/2026.
//

import SwiftUI

struct WorkLocationBadge: View {

    let workLocation: WorkLocation
    private var viewModel: WorkTableViewModel {
        WorkTableViewModel(workLocation: workLocation)
    }

    var body: some View {

        Label(
            viewModel.locationIsEmpty.uppercased(),
            systemImage: "mappin.circle"
        )
        .font(.caption2)
        .bold()
        .foregroundStyle(.bg)
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .lineLimit(1)
        .background {
            RoundedRectangle(cornerRadius: 8)
                .fill(.yellowPrimary)
        }
    }
}

#Preview {
    WorkLocationBadge(workLocation: works[0].locations[0])
}

#Preview {
    WorkLocationBadge(workLocation: works[1].locations[0])
}

#Preview {
    WorkLocationBadge(workLocation: works[2].locations[0])
}

#Preview {
    WorkLocationBadge(workLocation: works[3].locations[0])
}

#Preview {
    WorkLocationBadge(workLocation: works[4].locations[0])
}
