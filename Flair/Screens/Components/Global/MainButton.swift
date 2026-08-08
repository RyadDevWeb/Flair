//
//  MainButton.swift
//  Flair
//
//  Created by imane on 07/08/2026.
//

import SwiftUI

struct MainButton: View {

    var text: String

    var body: some View {

        NavigationLink {
            WorkTableView()
        } label: {
            Text(text)
                .font(.title3)
                .bold()
                .foregroundStyle(.bg)
        }
        .foregroundStyle(.bg)
        .frame(maxWidth: .infinity)
        .frame(height: 54)
        .background(.yellowPrimary)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    NavigationStack {
        MainButton(text: "Explorer l'univers")
    }
}
