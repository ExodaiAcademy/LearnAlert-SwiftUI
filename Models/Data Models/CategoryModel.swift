//
//  CategoryModel.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import Foundation

struct CategoryModel: Codable, Identifiable, Hashable {
    var id: UUID
    var title: String
}
