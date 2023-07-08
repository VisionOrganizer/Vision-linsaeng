//
//  _MyFirstAppApp.swift
//  _MyFirstApp
//
//  Created by 린생 on 2023/07/08.
//

import SwiftUI

@main
struct _MyFirstAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "Immersive") {
            ImmersiveView()
        }
    }
}
