//
//  FlairApp.swift
//  Flair
//
//  Created by Apprenant154 on 30/07/2026.
//

import SwiftUI

@main
struct FlairApp: App {
    
    
    var body: some Scene {
        WindowGroup {
            let work : Work = works[0]
            WorkDetailView(work: work)
        }
    }
}
