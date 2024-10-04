//
//  CompletedQuizModel.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import Foundation

struct CompletedQuizModel: Codable {
    var quizID: String
    var userID: String
    var date: Date
    var score: Int
    var rating: Int
}
