//
//  demoApp.swift
//  demo
//
//  Created by DAMII on 15/10/24.
//

import SwiftUI

@main
struct demoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
