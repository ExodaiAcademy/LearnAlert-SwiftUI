//
//  Bluebutton.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 03/10/2024.
//

import SwiftUI

struct BlueButton: View {
    var title: String
    var action: () -> Void

        var body: some View {
            Button(action: {
                action()
            }) {
                Text(title)
                    .foregroundStyle(.white)
                    .font(.system(size: 20))
                    .bold()
                    .padding([.trailing, .leading])
            }
            .frame(maxWidth: .infinity, minHeight: 64)
            .background(Rectangle().fill(Color.learnAlertBlue))
    }
}
