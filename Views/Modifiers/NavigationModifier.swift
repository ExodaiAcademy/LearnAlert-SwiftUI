//
//  NavigationModifier.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import SwiftUI

struct NavigationModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20))
            .foregroundStyle(.black)
            .bold()
            .multilineTextAlignment(.leading)
            .padding(.top, 10)
    }
}

extension View {
    func navigationModifier() -> some View {
        self.modifier(NavigationModifier())
    }
}
