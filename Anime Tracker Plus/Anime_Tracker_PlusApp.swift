//
//  Anime_Tracker_PlusApp.swift
//  Anime Tracker Plus
//
//  Created by Adjie Satryo on 29/10/24.
//

import SwiftUI
import SwiftData

@main
struct Anime_Tracker_PlusApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
