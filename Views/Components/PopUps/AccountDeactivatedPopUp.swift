//
//  AccountDeactivatedPopUp.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 04/10/2024.
//

import SwiftUI

struct AccountDeactivatedPopUp: View {
    var body: some View {
        ZStack {
            Color.white
            VStack {
                VStack {
                    Text("Account Deactivated!")
                        .font(.title)
                        .bold()
                        .multilineTextAlignment(.center)
                    Text("Your account is now deactivated. You can re-activate your account by loging in!")
                        .grayTextModifier()
                        .lineSpacing(10)
                        .multilineTextAlignment(.center)
                        .padding(.top, 7)
                }.frame(width: 270)
                Spacer()
                BlueButton(title: "OK") {
                    
                }.padding(.horizontal)
                BigCancelButton(title: "Permanently Delete") {
                    
                }
            }
        }.frame(width: 312, height: 320)
    }
}

#Preview {
    AccountDeactivatedPopUp()
}
