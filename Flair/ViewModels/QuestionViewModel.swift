//
//  QuestionViewModel.swift
//  Flair
//
//  Created by Apprenant154 on 09/08/2026.
//

import SwiftUI

struct QuestionViewModel {
    let question: Question
    
    var normalizedQuestion: Text {
        question.name
            .components(separatedBy: "**")
            .enumerated()
            .reduce(Text("")) { result, element in
                let (index, part) = element
                
                let styledPart = Text(part)
                    .foregroundStyle(
                        index.isMultiple(of: 2)
                        ? Color.primary
                        : Color.yellowPrimary
                    )
                
                return Text("\(result)\(styledPart)")
            }
    }
}

