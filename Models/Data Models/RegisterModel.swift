//
//  RegisterModel.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import Foundation

struct RegisterModel: Codable {
    let email: String
    let password: String
    let username: String
}

struct RegisterData: Decodable {
    let username: String
}
