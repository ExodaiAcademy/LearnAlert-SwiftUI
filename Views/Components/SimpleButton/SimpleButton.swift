//
//  SimpleButton.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 03/10/2024.
//

import SwiftUI

struct SimpleButton: View {
    var title: String
    var action: () -> Void

    var body: some View {
        Button(action: {
            action()
        }) {
            Text(title)
        }
    }
}

//#Preview {
//    SimpleButton()
//}
