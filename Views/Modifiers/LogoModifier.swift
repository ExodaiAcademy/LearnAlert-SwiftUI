//
//  Modifiers.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import Foundation
import SwiftUI

// Step 1: Define the custom ViewModifier
struct LogoModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(width: 200, height: 20)
    }
}

// Step 2: Create an extension to make it easier to apply the modifier
extension View {
    func logoModifier() -> some View {
        self.modifier(LogoModifier())
    }
}
