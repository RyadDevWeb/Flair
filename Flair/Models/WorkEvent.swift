//
//  WorkEvent.swift
//  Flair
//
//  Created by Apprenant154 on 07/08/2026.
//
import Foundation

struct WorkEvent: Identifiable {
    let id = UUID()
    let title: String
    let cover: String
    let image: String
    let description: String
    let period: String
    let year: Int
}
