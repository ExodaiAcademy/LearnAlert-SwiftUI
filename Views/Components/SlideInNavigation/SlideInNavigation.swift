//
//  SlideInNavigation.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import SwiftUI

struct SlideInNavigation: View {
    var body: some View {
            NavigationStack {
                
                HStack {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.black)
                            .bold()
                    }
                    Spacer()
                    Image("logo")
                        .resizable()
                        .logoModifier()
                    Spacer()
                }.padding()

                VStack(alignment: .leading) {
                    HStack {
                        NavigationLink("Notification Settings", destination: NotificationSettingsView())
                            .navigationModifier()
                        Spacer()
                    }.padding(.leading)
                    HStack {
                        NavigationLink("Difficulty Settings", destination: SettingsView())
                            .navigationModifier()
                        Spacer()
                    }.padding(.leading)
                    HStack {
                        NavigationLink("My Account", destination: MyProfileView())
                            .navigationModifier()
                        Spacer()
                    }.padding(.leading)
                    HStack {
                        NavigationLink("LeaderBoard", destination: SettingsView())
                            .navigationModifier()
                        Spacer()
                    }.padding(.leading)
                    HStack {
                        NavigationLink("App Theme", destination: SettingsView())
                            .navigationModifier()
                        Spacer()
                    }.padding(.leading)
                    HStack {
                        NavigationLink("Request a Quiz", destination: SettingsView())
                            .navigationModifier()
                        Spacer()
                    }.padding(.leading)
                    HStack {
                        NavigationLink("Terms & Conditions", destination: SettingsView())
                            .navigationModifier()
                        Spacer()
                    }.padding(.leading)
                }.padding(.top, 50)
                Spacer()
                
                HStack {
                    Button(action: {
                        
                    }) {
                        Text("Logout")
                            .font(.system(size: 20))
                            .foregroundStyle(.black)
                            .bold()
                    }
                    
                    Spacer()
                }.padding()
            }
        }
    
}

#Preview {
    SlideInNavigation()
}
