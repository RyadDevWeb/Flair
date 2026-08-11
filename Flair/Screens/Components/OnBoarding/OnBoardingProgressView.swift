//
//  OnBoardingProgressView.swift
//  Flair
//
//  Created by Apprenant154 on 10/08/2026.
//

import SwiftUI

struct OnBoardingProgressView: View {
    let count: Int
    let currentIndex: Int
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<count, id: \.self) { index in
                Capsule()
                    .fill(
                        index <= currentIndex
                        ? Color.white
                        : Color.white.opacity(0.25)
                    )
                    .frame(height: 4)
                    .animation(.smooth(duration: 0.25), value: currentIndex)
            }
        }
    }
}

#Preview {
    VStack(spacing: 20) {
        OnBoardingProgressView(count: 6, currentIndex: 0)
        OnBoardingProgressView(count: 6, currentIndex: 1)
        OnBoardingProgressView(count: 6, currentIndex: 3)
    }
    .padding()
    .background(.black)
    .preferredColorScheme(.dark)
}
