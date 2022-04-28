//
//  MyStartApp.swift
//  MyStart
//
//  Created by Sherzod Fayziev on 2022/04/27.
//

import SwiftUI

@main
struct MyStartApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            lesson2()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
