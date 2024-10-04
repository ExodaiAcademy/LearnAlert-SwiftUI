//
//  RegisterView.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 03/10/2024.
//

import SwiftUI

struct RegisterView: View {
    @State var email: String
    @State var password: String
    @State var username: String
    @State var termsConditionsIsOn: Bool
    var body: some View {
        ZStack {
            Color.learnAlertYellow
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("LearnAlert")
                        .font(.system(size: 35))
                        .fontWeight(.heavy)
                    Spacer()
                }
                Spacer()
                
                HStack {
                    Text("Create an account to get learning")
                        .font(.system(size: 22))
                        .bold()
                    Spacer()
                }
                VStack {
                    AuthTextField(email: $email)
                    AuthUsernameTextField(username: $username)
                        .padding(.top, 25)
                    SecureAuthTextField(password: $password).padding(.top, 30)
                    HStack {
                        Toggle(isOn: $termsConditionsIsOn) {
                            Text("By registering for learnAlert i agree with the terms and conditions and privacy policy")
                        }.toggleStyle(CheckBoxToggle())
                    }.padding(.top, 15)
                }.padding(.top, 25)
                VStack {
                    AuthButton(title: "Register") {
                        
                    }
                    SimpleButton(title: "Existing User? Login here") {
                        
                    }
                    .padding(.top, 15)
                }.padding(.top, 25)
                Spacer()
            }.padding()
        }
    }
}

#Preview {
    RegisterView(email: "", password: "", username: "", termsConditionsIsOn: false)
}
