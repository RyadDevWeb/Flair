//
//  CalendarViewModel.swift
//  Flair
//
//  Created by Apprenant151 on 08/08/2026.
//

import Foundation

struct CalendarViewModel {

    let works: [Work]

    static func dateFormatted(date: Date) -> String {
        return "\(date.formatted(.dateTime.day(.twoDigits))) / \(date.formatted(.dateTime.month(.twoDigits)))"
    }

    static func futureWork(works: [Work]) -> [Work] {
        works.filter { $0.airedDate > Date() }
    }
}
