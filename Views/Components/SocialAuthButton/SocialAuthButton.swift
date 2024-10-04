//
//  SocialAuthButton.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 03/10/2024.
//

import SwiftUI

struct SocialAuthButton: View {
    var title: String
    var imageName: String
    var backgroundColor: Color
    var buttonTitleColor: Color
    var action: () -> Void

    var body: some View {
        Button(action: {
            action()
        }) {
            HStack {
                Image(imageName)
                    .foregroundColor(.white)
                    .padding(.leading, 30)
                
                Spacer()
                
                Text(title)
                    .foregroundColor(buttonTitleColor)
                    .font(.system(size: 18))
                    .multilineTextAlignment(.leading)
                
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 48)
            .background(backgroundColor)
        }
    }
}

//#Preview {
//    SocialAuthButton()
//}
