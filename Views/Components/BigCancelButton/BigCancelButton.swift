//
//  BigCancelButton.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 03/10/2024.
//

import SwiftUI

struct BigCancelButton: View {
    var title: String
    var action: () -> Void

    var body: some View {
        Button(action: {
            action()
        }) {
            Text(title)
                .font(.title2)
                .foregroundStyle(.black)
                .bold()
        }
        .padding(.top, 20)
    }
}
