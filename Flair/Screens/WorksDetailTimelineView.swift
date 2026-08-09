//
//  WorksDetailTimelineView.swift
//  flair
//
//  Created by Apprenant131 on 29/07/2026.
//

import SwiftUI

struct WorksDetailTimelineView: View {
    
    let workEvent : WorkEvent
    
    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    WorksDetailTimelineView(workEvent: works[0].datesChronology[0])
}
