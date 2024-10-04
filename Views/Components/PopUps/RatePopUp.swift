//
//  RatePopUp.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 03/10/2024.
//

import SwiftUI

struct RatePopUp: View {
    
    @Binding var quiz: String
    @Binding var rating: Int
    
    private let maximumRating = 5
    private let offColor = Color.learnAlertRatingGray
    private let onColor = Color.yellow
    
    
    var body: some View {
        ZStack {
            Color.white
            VStack {
                Spacer()
                Text("Rate this Quiz")
                    .font(.title)
                    .bold()
                Spacer()
                Text(quiz)
                    .font(.system(size: 16))
                    .bold()
                Spacer()
                HStack {
                    ForEach(1...maximumRating, id: \.self) { number in
                        Image(systemName: "star.fill")
                            .foregroundColor(number <= rating ? onColor : offColor)
                            .onTapGesture {
                                rating = number
                            }
                            .font(.system(size: 30))
                    }
                }
                Spacer()
                BlueButton(title: "Submit") {
                    
                }
                Spacer()
                BigCancelButton(title: "Rate Later") {
                    
                }
                Spacer()
            }.frame(width: 312, height: 400)
        }.frame(width: 312, height: 400)
    }
}

#Preview {
    @Previewable @State var quiz: String = "German Foods"
    @Previewable @State var rating: Int = 0
    RatePopUp(quiz: $quiz, rating: $rating)
}
