//
//  ExplorationWorkCardView.swift
//  Flair
//
//  Created by Apprenant154 on 12/08/2026.
//

import SwiftUI

struct WorkCardComponentView: View {

    let work: Work

    private var badgeColor: Color {
        WorkDetailViewModel(work: work)
            .badgeColor(work.type)
    }

    private var badgeTitle: String {
        work.type.rawValue
            /// Permet de retirer les éléments diacritiques (= accents: é, è, à, etc..)
            .folding(options: .diacriticInsensitive, locale: .current)
            .uppercased()
    }

    var body: some View {
                ZStack(alignment: .topTrailing) {
                    Image(work.image)
                        .resizable()
                        .aspectRatio(2 / 3, contentMode: .fit)
                        .scaledToFill()

                    Text(badgeTitle)
                        .font(.system(size: 10, weight: .semibold))
                        .foregroundStyle(.white)
                        .frame(width: 48, height: 16)
                        .background(badgeColor)
                        .clipShape(.capsule)
                        .padding(8)
                }
                .clipShape(.rect(cornerRadius: 8))
                .aspectRatio(2 / 3, contentMode: .fit)
            }
}

#Preview {
    ScrollView(.horizontal) {
        HStack {
            WorkCardComponentView(work: works[0])
            WorkCardComponentView(work: works[1])
            WorkCardComponentView(work: works[1])
        }
        .padding(.vertical, 300)
    }

}
