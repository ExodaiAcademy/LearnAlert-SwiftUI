//
//  MyProfileView.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import SwiftUI

struct MyProfileView: View {
    
    @State var name: String = "Johan"
    @State var lastName: String = "T'Sas"
    @State var username: String = "Email"
    
    
    var body: some View {
        NavigationStack {
            VStack {
            }
            .background(Color.learnAlertYellow)
            .navigationTitle("My Account")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarAppearance(backgroundColor: .learnAlertYellow, titleColor: .black, hideBorder: true)
            
            VStack {
                 ScrollView {
                     VStack {
                         Section {
                             VStack(spacing: 20) {
                                 HStack {
                                     VStack {
                                         HStack {
                                             Text("First Name")
                                                 .grayTextModifier()
                                             Spacer()
                                         }
                                         TextField("Your first Name", text: $name)
                                             .font(.system(.title2))
                                             .bold()
                                             .disabled(true)
                                     }
                                     Spacer()
                                 }
                                 
                                 HStack {
                                     VStack {
                                         HStack {
                                             Text("Last Name")
                                                 .grayTextModifier()
                                             Spacer()
                                         }
                                         TextField("Your last Name", text: $lastName)
                                             .font(.system(.title2))
                                             .bold()
                                             .disabled(true)
                                     }
                                     Spacer()
                                 }
                                 
                                 HStack {
                                     VStack {
                                         HStack {
                                             Text("Username")
                                                 .grayTextModifier()
                                             Spacer()
                                         }
                                         TextField("Username", text: $username)
                                             .font(.system(.title2))
                                             .bold()
                                             .disabled(true)
                                     }
                                     Spacer()
                                 }
                             }
                             .padding()
                         }
                         
                         Spacer(minLength: 0)
                     }
                 }
                 
                 Section {
                     VStack {
                         BlueUpdateButton(title: "Update Profile") {
                             // Update profile action
                         }
                         
                         Button(action: {
                             // Deactivate account action
                         }) {
                             Text("Deactivate your account")
                                 .padding(.top)
                         }
                     }
                     
                     .frame(maxWidth: .infinity)
                     .background(Color.white)
                 }
                 .frame(maxWidth: .infinity, maxHeight: 100, alignment: .bottom)
             }
             .frame(maxWidth: .infinity, maxHeight: .infinity)
             .background(Color(.systemGroupedBackground))
        }
    }
    

}

#Preview {
    MyProfileView()
}
