//
//  QuestionModel.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import Foundation

struct QuestionModel: Codable {
    var id: UUID?
    var question: String?
    var quiz: UUID?
    var answer: String
}
