//
//  UIKitImageView.swift
//  Flair
//
//  Created by Apprenant154 on 13/08/2026.
//


import SwiftUI
import UIKit

struct UIKitImageView: UIViewRepresentable {
    let image: UIImage
    
    func makeUIView(context: Context) -> UIImageView {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }
    
    func updateUIView(_ imageView: UIImageView, context: Context) {
        imageView.image = image
    }
    
    func sizeThatFits(
        _ proposal: ProposedViewSize,
        uiView: UIImageView,
        context: Context
    ) -> CGSize? {
        guard let width = proposal.width,
              let height = proposal.height else {
            return nil
        }
        
        return CGSize(width: width, height: height)
    }
}

#Preview {
    CharacterCardView(character: works[0].characters[0], isSelected: false, action: {  })
        .environment(AppStore(works: works, user: user))
    
    CharacterCardView(character: works[0].characters[1], isSelected: true, action: {  })
        .environment(AppStore(works: works, user: user))
    
    CharacterCardView(character: works[1].characters[0], isSelected: false, action: {  })
        .environment(AppStore(works: works, user: user))
    CharacterCardView(character: works[2].characters[1], isSelected: true, action: {  })
        .environment(AppStore(works: works, user: user))
}
