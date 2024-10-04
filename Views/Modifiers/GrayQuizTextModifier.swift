//
//  GrayQuizTextModifier.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 03/10/2024.
//
import SwiftUI

struct GrayQuizTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16))
            .fontWeight(.semibold)
            .foregroundStyle(Color.learnAlertGray)
    }
}

extension View {
    func grayQuizTextModifier() -> some View {
        self.modifier(GrayQuizTextModifier())  // Apply the custom modifier
    }
}
