//
//  QuizRequestPopUp.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 03/10/2024.
//

import SwiftUI

struct QuizRequestPopUp: View {
    var body: some View {
        ZStack {
            Color.white
            VStack {
                VStack {
                    Text("Done")
                        .font(.title)
                        .bold()
                    Text("Your quiz request has been submitted")
                        .grayTextModifier()
                        .lineSpacing(10)
                        .multilineTextAlignment(.center)
                        .padding(.top, 7)
                }.frame(width: 226)
                Spacer()
                BlueButton(title: "OK") {
                    
                }.padding(.horizontal)
                BigCancelButton(title: "Submit Another") {
                    
                }
            }
        }.frame(width: 312, height: 280)
    }
}

#Preview {
    QuizRequestPopUp()
}
