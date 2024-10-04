//
//  NotificationSettingsView.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import SwiftUI
import AudioToolbox

struct NotificationSettingsView: View {
    @AppStorage("isOn") var isOn: Bool = false
    @AppStorage("mondayIsOn") var m: Bool = false
    @AppStorage("tuesdayIsOn") var t: Bool = false
    @AppStorage("wednesdayIsOn") var w: Bool = false
    @AppStorage("thursdayIsOn") var th: Bool = false
    @AppStorage("fridayIsOn") var f: Bool = false
    @AppStorage("saturdayIsOn") var sa: Bool = false
    @AppStorage("sundayIsOn") var so: Bool = false
    @AppStorage("alertSound") var alertSound = false
    @AppStorage("vibrationIsOn") var vibrationIsOne = false
    @AppStorage("selectedStartingTime") var selectedStartingTime = Date()
    @AppStorage("selectedEndingTime") var selectedEndingTime = Date()
        
    var body: some View {
        NavigationStack {
                VStack {
                }
                .background(Color.learnAlertYellow)
                .navigationTitle("Notifications")
                .navigationBarTitleDisplayMode(.large)
                .navigationBarAppearance(backgroundColor: .learnAlertYellow, titleColor: .black, hideBorder: true)
            ScrollView {
                Section {
                    HStack {
                        Text("Notifications On")
                            .grayTextModifier()
                        Toggle("", isOn: $isOn)
                            .tint(.learnAlertPink)
                            
                    }.padding([.leading, .trailing])
                }.padding(.top)
                Divider()
                Section {
                    VStack {
                        Group {
                            VStack {
                                HStack {
                                    Text("Quiz Alerts ON")
                                        .grayTextModifier()
                                    Spacer()
                                }
                                HStack {
                                    CustomCheckBox(isOn: $m, label: "M")
                                    Spacer()
                                    CustomCheckBox(isOn: $t, label: "T")
                                    Spacer()
                                    CustomCheckBox(isOn: $w, label: "W")
                                    Spacer()
                                    CustomCheckBox(isOn: $th, label: "TH")
                                    Spacer()
                                    CustomCheckBox(isOn: $f, label: "F")
                                    Spacer()
                                    CustomCheckBox(isOn: $sa, label: "SA")
                                    Spacer()
                                    CustomCheckBox(isOn: $so, label: "SO")
                                }.padding(.top, 10)
                                HStack {
                                    Text("Start alerting me at")
                                        .grayTextModifier()
                                
                                    Spacer()
                                    TimePicker(selectedTime: $selectedStartingTime)
                                }.padding(.top, 10)
                                HStack {
                                    Text("Stop alerting me at")
                                        .grayTextModifier()
                                
                                    Spacer()
                                    TimePicker(selectedTime: $selectedEndingTime)
                                }.padding(.top, 10)
                                
                            }
                            
                        }.padding([.leading, .trailing, .top])
                    }
                }
                Divider()
                Section {
                    HStack {
                        Text("Alert Sound")
                            .grayTextModifier()
                        Spacer()
                        Button(action: {
                            playNotificationSound()
                        }) {
                            Text("(Click to test)")
                                .padding(.leading, 20)
                        }
                        
                        Toggle("", isOn: $alertSound)
                            .tint(.learnAlertPink)
                            
                    }.padding()
                }
                Divider()
                Section {
                    HStack {
                        Text("Vibrate        ")
                            .grayTextModifier()
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Text("(Click to test)")
                                .padding(.leading, 20)
                            
                        }
                        Toggle("", isOn: $vibrationIsOne)
                            .tint(.learnAlertPink)
                            
                    }.padding()
                }
            }.background(Color.white)
        }
    }
    
    // Function to play a system notification sound
        func playNotificationSound() {
            AudioServicesPlaySystemSound(1007)  // System sound ID for a notification sound
        }
}

#Preview {
    NotificationSettingsView()
}
