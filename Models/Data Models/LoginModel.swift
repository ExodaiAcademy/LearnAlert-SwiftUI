//
//  LoginModel.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import Foundation

struct LoginModel: Encodable {
    let username: String
    let password: String
}

struct LoginData: Decodable {
    let id: String
    let value: String
}
