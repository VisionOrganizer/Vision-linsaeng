//
//  MyFirstAppApp.swift
//  MyFirstApp
//
//  Created by 린생 on 2023/07/08.
//

import SwiftUI

@main
struct MyFirstAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
