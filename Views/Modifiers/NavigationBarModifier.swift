//
//  NavigationBarModifier.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import SwiftUI
struct NavigationBarModifier: ViewModifier {
    var backgroundColor: Color
    var titleColor: UIColor
    var hideBorder: Bool

    init(backgroundColor: Color, titleColor: UIColor, hideBorder: Bool = true) {
        self.backgroundColor = backgroundColor
        self.titleColor = titleColor
        self.hideBorder = hideBorder

        // Step 2: Configure UINavigationBarAppearance
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(backgroundColor)  // Set custom background color
        appearance.largeTitleTextAttributes = [.foregroundColor: titleColor]  // Large title text color
        appearance.titleTextAttributes = [.foregroundColor: titleColor]       // Regular title text color
        
        if hideBorder {
            appearance.shadowColor = .clear  // Remove shadow (border line)
            appearance.backgroundEffect = nil  // Remove background blur effect
        }
        
        // Apply appearance to UINavigationBar
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }

    func body(content: Content) -> some View {
        content
    }
}


extension View {
    func navigationBarAppearance(backgroundColor: Color, titleColor: UIColor, hideBorder: Bool) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor, titleColor: titleColor, hideBorder: hideBorder))
    }
}
