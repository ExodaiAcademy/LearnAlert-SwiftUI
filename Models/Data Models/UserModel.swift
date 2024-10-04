//
//  UserModel.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import Foundation

struct UserModel: Codable {
    let id: String?
    let username: String?
    let name: String?
    let lastname: String?
    let updatedAt: Date?
    let email: String?
    let scores: Int?
}
