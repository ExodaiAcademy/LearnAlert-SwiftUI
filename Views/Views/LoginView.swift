//
//  LoginVIew.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 03/10/2024.
//

import SwiftUI

struct LoginView: View {
    @State var email: String
    @State var password: String
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
                    Text("User Login")
                        .font(.system(size: 22))
                        .bold()
                    Spacer()
                }
                VStack {
                    AuthTextField(email: $email)
                    SecureAuthTextField(password: $password).padding(.top, 30)
                    HStack {
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Text("Forgot Password?")
                        }.padding(.top, 20)
                    }
                    
                }.padding(.top, 25)
                VStack {
                    AuthButton(title: "Login") {
                        
                    }
                    Button(action: {
                        
                    }) {
                        Text("No Account? Register here")
                    }.padding(.top, 20)
                    Text("Or")
                        .padding(.top, 20)
                }.padding(.top, 25)
                VStack {
                    SocialAuthButton(title: "Sign in with Google     ", imageName: "google", backgroundColor: .learnAlertOrange, buttonTitleColor: .white) {
                        
                    }.padding(.top, 10)
                    SocialAuthButton(title: "Sign in with Facebook", imageName: "facebook", backgroundColor: .learnAlertDarkBlue, buttonTitleColor: .white) {
                        
                    }.padding(.top, 10)
                    SocialAuthButton(title: "Sign in with Apple      ", imageName: "apple", backgroundColor: .white, buttonTitleColor: .black) {
                        
                    }.padding(.top, 10)
                }
                
                Spacer()
            }.padding()
        }
    }
}

#Preview {
    LoginView(email: "", password: "")
}
