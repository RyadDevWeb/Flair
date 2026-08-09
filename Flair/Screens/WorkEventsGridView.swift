//
//  WorkEventsGridCard.swift
//  Flair
//
//  Created by imane on 09/08/2026.
//

import SwiftUI

struct WorkEventsGridView: View {

    let workEvents: [WorkEvent]

    var body: some View {

        ScrollView {
            VStack(spacing: 24) {
                ForEach(workEvents) { event in
                    WorkEventCard(workEvent: event)
                }
            }
            .padding(16)
        }.scrollIndicators(.hidden)
    }
}

#Preview {
    WorkEventsGridView(workEvents: works[0].datesChronology)
}
