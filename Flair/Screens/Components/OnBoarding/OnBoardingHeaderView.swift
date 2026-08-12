//
//  OnBoardingHeaderView.swift
//  Flair
//
//  Created by Apprenant154 on 10/08/2026.
//


import SwiftUI

struct OnBoardingHeaderView: View {
    let count: Int
    let currentIndex: Int
    let showsBackButton: Bool
    let onBack: () -> Void

    var body: some View {
        HStack(spacing: 16) {
            if showsBackButton {
                Button(action: onBack) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 30)).fontWeight(.black)
                        .foregroundStyle(Color.yellowPrimary)
                        
                }
                .buttonStyle(.plain)
                .transition(
                    .move(edge: .leading)
                    .combined(with: .opacity)
                )
            }

            OnBoardingProgressView(
                count: count,
                currentIndex: currentIndex
            )
        }
        .frame(height: 24)
    }
}

#Preview {
    VStack(spacing: 30) {
        OnBoardingHeaderView(
            count: 6,
            currentIndex: 0,
            showsBackButton: false,
            onBack: {}
        )

        OnBoardingHeaderView(
            count: 6,
            currentIndex: 1,
            showsBackButton: true,
            onBack: {}
        )
    }
    .padding()
    .background(.black)
    .preferredColorScheme(.dark)
}
