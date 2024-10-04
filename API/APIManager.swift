//
//  APIManager.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import Foundation

struct APIManager {
    enum AppStatus {
        case local
        case staging
        case production
    }
    
    let appStatus: AppStatus = .local
    
    enum BasicURLS: String {
        case localURL = "http://localhost:8080/api"
        case stagingURL = ""
        case productionURL = "https://learnalert.io/api"
    }
    
    enum APIRoutes {
        case login
        case register
        case quiz
        case quizzes
    }
    
    public func urlBuilder() -> String {
        switch appStatus {
        case .local:
            return BasicURLS.localURL.rawValue
        case .staging:
            return BasicURLS.stagingURL.rawValue
        case .production:
            return BasicURLS.productionURL.rawValue
        }
    }
}
