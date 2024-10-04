//
//  CorrectPopUp.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 03/10/2024.
//

import SwiftUI

struct CorrectPopUp: View {
    @Binding var answersOff: Bool
    @Binding var difficulty: String
    @Binding var notificationQuestion: Bool
    @Binding var inARow: Int
    @Binding var score: Int
    @Binding var finalScore: Int
    
    var body: some View {
        ZStack {
            Color.white
            VStack {
                Text("Correct!")
                    .font(.system(size: 20))
                    .bold()
                HStack {
                    Text("Score")
                        .bold()
                    Spacer()
                    Text("\(score)")
                        .bold()
                }.padding(.horizontal)
                Divider().padding(.horizontal)
                HStack {
                    Text("Answers OFF")
                        .grayTextModifier()
                    Spacer()
                    Text("x1.4")
                        .foregroundStyle(Color.learnAlertBlue)
                }.padding(.horizontal).padding(.top, 2)
                HStack {
                    Text("Difficulty")
                        .grayTextModifier()
                    Spacer()
                    Text("x1.6")
                        .foregroundStyle(Color.learnAlertBlue)
                }.padding(.horizontal).padding(.top, 2)
                HStack {
                    Text("Notification Question")
                        .grayTextModifier()
                    Spacer()
                    Text("x1.4")
                        .foregroundStyle(Color.learnAlertBlue)
                }.padding(.horizontal).padding(.top, 2)
                HStack {
                    Text("5 in a row!")
                        .grayTextModifier()
                    Spacer()
                    Text("x1.5")
                        .foregroundStyle(Color.learnAlertBlue)
                }.padding(.horizontal).padding(.top, 2)
                Divider().padding(.horizontal)
                HStack {
                    Text("Total Score:")
                        .bold()
                    Spacer()
                    Text("\(finalScore)")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundStyle(Color.learnAlertBlue)
                }.padding(.horizontal)
                
            }
            .frame(width: 330, height: 270)
            .background(Rectangle().stroke(Color.learnAlertBlue, lineWidth: 3))
        }.frame(width: 330, height: 270)
            
        
    }
}

#Preview {
    
    @Previewable @State var answersOff: Bool = true
    @Previewable @State var difficulty: String = ""
    @Previewable @State var notificationQuestion: Bool = true
    @Previewable @State var inARow: Int = 5
    @Previewable @State var score: Int = 10
    @Previewable @State var finalScore = 90
    
    CorrectPopUp(answersOff: $answersOff, difficulty: $difficulty, notificationQuestion: $notificationQuestion, inARow: $inARow, score: $score, finalScore: $finalScore)
}
