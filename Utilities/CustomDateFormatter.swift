//
//  DateFormatter.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 04/10/2024.
//

import Foundation

struct CustomDateFormatter {
    let customDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long  // This will format the date as "October 27, 2024"
        formatter.timeStyle = .none  // No time part, only the date
        return formatter
    }()

}
