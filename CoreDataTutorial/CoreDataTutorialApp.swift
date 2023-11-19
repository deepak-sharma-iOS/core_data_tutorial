//
//  CoreDataTutorialApp.swift
//  CoreDataTutorial
//
//  Created by Deepak Sharma on 10/09/23.
//

import SwiftUI

@main
struct CoreDataTutorialApp: App {
    var controller = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, controller.container.viewContext)
        }
    }
}
