//
//  WorkTableViewModel.swift
//  Flair
//
//  Created by imane on 08/08/2026.
//

import Foundation

struct WorkTableViewModel {
    
    let workLocation : WorkLocation
    
    // Lieux
    var locationIsEmpty : String {
        workLocation.location ?? ""
    }
    
}
