//
//  AuthButton.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 03/10/2024.
//

import SwiftUI

struct AuthButton: View {
    var title: String
    var action: () -> Void

    var body: some View {
        Button(action: {
            action()
        }) {
            Text(title)
                .foregroundColor(.white)
                .font(.system(size: 18))
                .bold()
                .frame(maxWidth: .infinity)
                .frame(height: 48)
                .background(Color.learnAlertBlue)
        }
        .cornerRadius(0)  
    }
}

//#Preview {
//    AuthButton()
//}
