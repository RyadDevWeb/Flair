//
//  RootView.swift
//  flair
//
//  Created by imane on 31/07/2026.
//

import SwiftUI

struct RootView: View {

    @State private var showSplash = true

    var body: some View {
        if showSplash {
            SplashScreenView()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        showSplash = false
                    }
                }
        } else {
            OnboardingView()
        }
    }
}

#Preview {
    RootView()
}
