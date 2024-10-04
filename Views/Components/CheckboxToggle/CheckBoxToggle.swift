//
//  CheckBoxToggle.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 03/10/2024.
//

import SwiftUI

struct CheckBoxToggle: ToggleStyle {
        func makeBody(configuration: Configuration) -> some View {
            //contains everything horizontally
            HStack {
                //makes the shape a rectangle
                RoundedRectangle(cornerRadius: 5.0)
                    .stroke(lineWidth: 1)
                    .foregroundColor(Color.black)
                    .frame(width: 25, height: 25)
                    .overlay {
                        //if its checked then the box will turn be and a checkmark will appear
                        if(configuration.isOn) {
                            Image(systemName: configuration.isOn ?"checkmark" : "").frame(width: 26.0, height: 26.0).background(Color.learnAlertBlue).foregroundColor(.white).cornerRadius(5.0)
                        }
                    }.frame(width :30, height : 30)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            configuration.isOn.toggle()
             
                        }
                    }
                
                configuration.label
                
            }
        }
}

