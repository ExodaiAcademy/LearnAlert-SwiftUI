//
//  GrayTextModifier.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import SwiftUI

struct GrayTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16))           // Set the font size to 16
            .foregroundStyle(Color.learnAlertGray)  // Use custom gray color
    }
}

extension View {
    func grayTextModifier() -> some View {
        self.modifier(GrayTextModifier())
    }
}

