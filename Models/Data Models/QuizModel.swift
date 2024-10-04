//
//  QuizModel.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import Foundation

struct QuizModel: Codable, Identifiable, Hashable {
  
    var id: UUID
    var title: String
    var difficulty: String
    var category: UUID
    let amountOfQuestions: Int
    let rating: Int
    let usersPlayed: Int
    
    
    init(id: UUID, title: String, difficulty: String, category: UUID, amountOfQuestions: Int, rating: Int, usersPlayed: Int) {
        self.id = id
        self.title = title
        self.difficulty = difficulty
        self.category = category
        self.amountOfQuestions = amountOfQuestions
        self.rating = rating
        self.usersPlayed = usersPlayed
    }
}

struct QuizAnswerModel: Codable {
    let quiz: QuizModel
    let questions: [QuestionModel]
}

//struct QuizQuestionCoreDataModel {
//    let quiz: [QuizData]
//    let questions: [QuestionData]
//}
