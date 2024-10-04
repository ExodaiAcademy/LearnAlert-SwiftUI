//
//  TopBar.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import SwiftUI

struct TopBar: View {
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "line.3.horizontal")
                            .resizable()
                            .frame(width: 20, height: 15)
                            .foregroundStyle(.black)
                    }
                    Spacer()
                    Image("logo")
                        .resizable()
                        .logoModifier()
                    Spacer()
                    Button(action: {
                        
                    }) {
                        Image("instagram")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                }.padding()
            }
            .padding([.top, .bottom] , 15)
            
            HStack {
                
            }
        }.background(Color.learnAlertYellow)
    }
}

#Preview {
    TopBar()
}
