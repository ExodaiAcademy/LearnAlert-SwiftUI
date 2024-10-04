//
//  CustomCheckBoxToggleStyle.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import SwiftUI

struct CustomCheckBoxToggleStyleModifier<Label: View>: ToggleStyle {
    @ViewBuilder let label: () -> Label  // Allows custom content for the label
    
    func makeBody(configuration: Configuration) -> some View {
            // Layout everything horizontally in an HStack
            HStack {
                // Custom checkbox shape (RoundedRectangle)
                ZStack {
                    RoundedRectangle(cornerRadius: 1.0)
                        .stroke(lineWidth: 1)
                        .foregroundColor(.black)
                        .frame(width: 32, height: 32)

                    // Show the custom content (e.g., Text "M") inside the checkbox
                    label()
                        .foregroundColor(configuration.isOn ? Color.white : Color.black)  // Text color changes based on the toggle state
                        .background(configuration.isOn ? Color.learnAlertPink : Color.clear)  // Background changes when checked
                        .cornerRadius(1.0)
                }
                .onTapGesture {
                    // Toggle the checkbox with animation
                    withAnimation(.spring()) {
                        configuration.isOn.toggle()
                    }
                }
            }
        }
}

// Step 2: Create an extension to easily apply the custom toggle style
extension View {
    func customCheckBoxModifier<Label: View>(@ViewBuilder label: @escaping () -> Label) -> some View {
        self.toggleStyle(CustomCheckBoxToggleStyleModifier(label: label))
    }
}
