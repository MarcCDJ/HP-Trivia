//
//  HP_TriviaApp.swift
//  HP Trivia
//
//  Created by Marc Cruz on 8/9/23.
//

import SwiftUI

@main
struct HP_TriviaApp: App {
    @StateObject private var store = Store()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
                .task {
                    await store.loadProducts()
                }
        }
    }
}
