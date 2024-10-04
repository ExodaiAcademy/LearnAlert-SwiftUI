//
//  IncorrectPopUp.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 03/10/2024.
//

import SwiftUI

struct IncorrectPopUp: View {
    @Binding var points: Int
    var body: some View {
        ZStack {
            Color.white
            VStack {
                Spacer()
                Text("Incorrect!")
                    .foregroundStyle(Color.learnAlertPink)
                    .font(.system(size: 27))
                    .fontWeight(.semibold)
                Spacer()
                HStack {
                    Text("\(points)")
                        .foregroundStyle(Color.learnAlertPink)
                        .font(.system(size: 30))
                        .fontWeight(.semibold)
                    Text("points")
                        .font(.system(size: 30))
                }
                Spacer()
            }
            .frame(width: 320, height: 160)
            .background(Rectangle().stroke(Color.learnAlertPink, lineWidth: 3))
        }.frame(width: 320, height: 160)
    }
}

#Preview {
    @Previewable @State var points: Int = -10
    IncorrectPopUp(points: $points)
}
