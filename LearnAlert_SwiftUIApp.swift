//
//  LearnAlert_SwiftUIApp.swift
//  LearnAlert-SwiftUI
//
//  Created by Johan Sas on 02/10/2024.
//

import SwiftUI

@main
struct LearnAlert_SwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
