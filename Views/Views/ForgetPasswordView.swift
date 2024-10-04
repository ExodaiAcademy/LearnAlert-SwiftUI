//
//  ForgetPasswordView.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 03/10/2024.
//

import SwiftUI

struct ForgetPasswordView: View {
    @State var email: String
    var body: some View {
        ZStack {
            Color.learnAlertYellow
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("Enter your email below. If your email is known by us, you will receive a password reset link in your email.")
                        .font(.system(size: 18))
                        .lineSpacing(5)
                        .bold()
                        .frame(width: 280)
                    Spacer()
                }
                AuthTextField(email: $email)
                    .padding(.top, 20)
                AuthButton(title: "Proceed") {
                    
                }.padding(.top, 25)
                
                SimpleButton(title: "Cancel") {
                    
                }.padding(.top, 20)
                
                Spacer()
            }
            .padding([.leading, .trailing])
            .padding(.top, 30)
        }
    }
}

#Preview {
    ForgetPasswordView(email: "")
}
