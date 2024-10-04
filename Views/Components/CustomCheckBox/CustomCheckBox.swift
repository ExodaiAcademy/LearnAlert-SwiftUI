//
//  CustomCheckBox.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import SwiftUI

struct CustomCheckBox: View {
    @Binding var isOn: Bool
    var label: String

    var body: some View {
        Toggle(isOn: $isOn) {
            
        }
        .customCheckBoxModifier {
           Text(label)
        }
            }
}

//#Preview {
//    @Binding var isOn: Bool
//    CustomCheckBox(isOn: isOn, label: <#String#>)
//}
