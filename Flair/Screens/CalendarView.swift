//
//  CalendarView.swift
//  flair
//
//  Created by Apprenant131 on 29/07/2026.
//

import SwiftUI

struct CalendarView: View {

    let works: [Work]

    var body: some View {

        ScrollView {
            VStack(spacing: 24) {
                HStack {
                    WorkQuoteBar()
                    VStack(alignment: .leading) {
                        Text("Prochaine sorties")
                            .font(Font.custom("Archivo Black", size: 22))
                        Text("Restez informez des prochains best seller.")
                            .font(Font.custom("SF Pro", size: 13))
                    }
                    .padding(.trailing, 140)
                }
                ForEach(CalendarViewModel.futureWork(works: works)) { work in
                    NavigationLink {
                        WorkDetailView(work: work)
                    } label: {
//                        CalendarCard(work: work)
//                            .foregroundStyle(Color.white)
                    }
                }
            }
            .scrollIndicators(.hidden)
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    NavigationStack {
        CalendarView(works: [works[0], works[1], works[2], works[3]])
    }
}
