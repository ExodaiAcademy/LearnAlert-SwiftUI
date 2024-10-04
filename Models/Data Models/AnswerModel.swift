//
//  AnswerModel.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import Foundation

struct AnswerModel: Codable {
    var id: UUID?
    var answer: String?
    var quiz: UUID?
}

