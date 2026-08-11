//
//  FavoriteWorkCardView.swift
//  Flair
//
//  Created by Apprenant154 on 11/08/2026.
//

import SwiftUI

struct FavoriteWorkCardView: View {
    let work: Work
    let isSelected: Bool

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(work.image)
                .resizable()
                .scaledToFill()
                .aspectRatio(contentMode: .fill)
                .clipped()

            Text("")
                .frame(height: 30)
                .padding(.vertical)
                .frame(maxWidth: .infinity)
                .background(.black.opacity(0.6))
                .overlay(alignment: .leading) {
                    Text(work.title)
                        .padding(.leading, 8)
                        .foregroundStyle(.white)
                        .font(.custom("Archivo-Bold", size: 16))
                        .frame(minHeight: 30)
                }
        }
        .clipShape(.rect(cornerRadius: 8))
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(
                    isSelected ? .yellow : .clear,
                    lineWidth: 3
                )
        }
        .overlay(alignment: .topTrailing) {
            if isSelected {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundStyle(.yellow)
                    .padding()
            }
        }
    }
}

#Preview {
    HStack {
        FavoriteWorkCardView(work: works[0], isSelected: false)
        FavoriteWorkCardView(work: works[1], isSelected: true)

    }
    .padding()
    .frame(height: 220)
    .preferredColorScheme(.dark)

}
