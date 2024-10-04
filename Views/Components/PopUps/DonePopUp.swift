//
//  DonePopUp.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 03/10/2024.
//

import SwiftUI

struct DonePopUp: View {
    var body: some View {
        ZStack {
            Color.white
            VStack {
                VStack {
                    Text("Done")
                        .font(.title)
                        .bold()
                    Text("Your rating has been submitted")
                        .grayTextModifier()
                        .lineSpacing(10)
                        .padding(.top, 7)
                }.frame(width: 226)
                
                BlueButton(title: "OK") {
                    
                }.padding()
            }
        }.frame(width: 312, height: 256)
    }
}

#Preview {
    DonePopUp()
}
