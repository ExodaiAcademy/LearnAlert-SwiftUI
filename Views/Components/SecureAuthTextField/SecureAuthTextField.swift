//
//  SecureAuthTextField.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 03/10/2024.
//

import SwiftUI

struct SecureAuthTextField: View {
    @Binding var password: String
    var body: some View {
        VStack {
            SecureField("Password", text: $password)
                .padding(.bottom, 5)
                .background(Color.clear)
                .font(.system(size: 18))
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.black)
        }
    }
}

//#Preview {
//    SecureAuthTextField()
//}
