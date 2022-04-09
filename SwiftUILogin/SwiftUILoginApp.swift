//
//  SwiftUILoginApp.swift
//  SwiftUILogin
//
//  Created by Shohjahon Numonovich on 4/8/22.
//

import SwiftUI

@main
struct SwiftUILoginApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            StarterScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext).environmentObject(Status())
        }
    }
}
