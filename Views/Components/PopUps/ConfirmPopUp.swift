//
//  ConfirmPopUp.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 03/10/2024.
//

import SwiftUI

struct ConfirmPopUp: View {
    var body: some View {
        ZStack {
            Color.white
            VStack {
                Text("Confirm")
                    .font(.title)
                    .fontWeight(.semibold)
                Spacer()
                Text("Are you ready to study")
                    .grayTextModifier()
                Text("German Celebrities")
                    .grayQuizTextModifier()
                Spacer()
                BlueButton(title: "Yes, Let's go!") {
                    
                }
                .padding()
                BigCancelButton(title: "Nope, not right now") {
                    
                }
                Spacer()
            }
        }.frame(width: 312, height: 336)
    }
}

#Preview {
    ConfirmPopUp()
}
