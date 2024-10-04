//
//  InProgressQuizListItem.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 04/10/2024.
//

import SwiftUI

struct InProgressQuizListItem: View {
    @Binding var title: String
    @Binding var currentScore: Int
    @Binding var correct: Int
    @Binding var questions: Int
    @Binding var notificationIsOn: Bool
    @Binding var lastStudied: Date
    var body: some View {
        ZStack {
            HStack {
                VStack {
                    HStack {
                        Text(title)
                            .font(.system(size: 15))
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Button(action: {
                            notificationIsOn.toggle()
                                }) {
                                    Image(systemName: "bell.fill")
                                        .resizable()
                                        .frame(width: 17, height: 20)
                                        .foregroundColor(notificationIsOn ? .learnAlertPink : .learnAlertGray)
                                }
                    }
                    HStack {
                        VStack(alignment: .leading) {
                           Text("Last Studied:")
                                .font(.system(size: 11))
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.leading)
                            Text("\(CustomDateFormatter().customDateFormatter.string(from: lastStudied))")
                                 .font(.system(size: 11))
                                 .multilineTextAlignment(.leading)
                        }
                        Spacer()
                        VStack(alignment: .leading) {
                            Text("Score:")
                                 .font(.system(size: 11))
                                 .fontWeight(.semibold)
                                 .multilineTextAlignment(.leading)
                            Text("\(currentScore)")
                                .foregroundStyle(Color.learnAlertPink)
                                 .font(.system(size: 11))
                                 .fontWeight(.semibold)
                                 .multilineTextAlignment(.leading)
                        }
                        Spacer()
                        VStack(alignment: .leading) {
                            Text("Correct:")
                                 .font(.system(size: 11))
                                 .fontWeight(.semibold)
                                 .multilineTextAlignment(.leading)
                             Text("\(correct)/\(questions)")
                                .foregroundStyle(Color.learnAlertGray)
                                .font(.system(size: 11))
                                .multilineTextAlignment(.leading)
                        }
                        Spacer()
                    }.padding(.top, 10)
                }.padding(.horizontal, 15)
            }
            .frame(width: .infinity, height: 96)
            .padding(.horizontal, 15)
        }.frame(width: .infinity, height: 96)
    }
}

#Preview {
    
    @Previewable @State var title: String = "German Foods"
    @Previewable @State var currentScore: Int = 15
    @Previewable @State var correct: Int = 1
    @Previewable @State var questions: Int = 20
    @Previewable @State var notificationIsOn: Bool = true
    @Previewable @State var lastStudied: Date = Date()
    
    InProgressQuizListItem(title: $title, currentScore: $currentScore, correct: $correct, questions: $questions, notificationIsOn: $notificationIsOn, lastStudied: $lastStudied)
}
