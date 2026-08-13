//
//  ExplorationPickerTypeView.swift
//  Flair
//
//  Created by Apprenant151 on 12/08/2026.
//

import SwiftUI

struct ExplorationPickerType: View {

    @Binding var selectedType: Types

    var body: some View {

        Picker("Type", selection: $selectedType) {
            ForEach(Types.allCases, id: \.self) {  type in
                Text(type.rawValue)
                    .tag(type)
            }
        }
        .pickerStyle(.palette)
    }
}

#Preview {
    ExplorationPickerType(selectedType: .constant(.anime))
}
