//
//  AuthTextField.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 03/10/2024.
//

import SwiftUI

struct AuthTextField: View {
    @Binding var email: String
    
    var body: some View {
        VStack {
            VStack {
                TextField("Email", text: $email)
                    .padding(.bottom, 5)
                    .background(Color.clear)
                    .font(.system(size: 18))
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.black)
            }
        }
        
    }
}

//#Preview {
//    AuthTextField(email: "johan@test.com")
//}
