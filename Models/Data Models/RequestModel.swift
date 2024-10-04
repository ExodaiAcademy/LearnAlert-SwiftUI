//
//  RequestModel.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import Foundation

struct RequestQuizModel: Codable {
    var subject: String?
    var request: String?
    
    init(subject: String?, request: String?) {
        self.subject = subject
        self.request = request
    }
}
