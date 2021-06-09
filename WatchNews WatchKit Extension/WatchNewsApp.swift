//
//  WatchNewsApp.swift
//  WatchNews WatchKit Extension
//
//  Created by Amey Sunu on 09/06/21.
//

import SwiftUI

@main
struct WatchNewsApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
