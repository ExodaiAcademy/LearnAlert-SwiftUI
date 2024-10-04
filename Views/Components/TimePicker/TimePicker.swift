//
//  TimePicker.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import SwiftUI

struct TimePicker: View {
    @Binding var selectedTime: Date  // Binding to the selected time
        
        var body: some View {
            DatePicker("",selection: $selectedTime,
                        displayedComponents: .hourAndMinute)
                        .pickerStyle(DefaultPickerStyle())
                        .padding()
        }
}

//#Preview {
//    TimePicker()
//}
