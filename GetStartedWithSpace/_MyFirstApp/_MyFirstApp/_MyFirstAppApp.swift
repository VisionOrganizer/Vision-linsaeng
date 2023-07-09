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
            ContentView(solarSystem: SolarSystem())
        }

//        ImmersiveSpace(for: SolarSystem.ID.self) { solarSystemID in
//            ImmersiveView()
//        }
//
        ImmersiveSpace(id: "Immersive") {
            ImmersiveView()
        }
    }
}

struct SolarSystem {
    let id: ID = .init(idd: "Test")

    struct ID: Hashable, Codable {
        let idd: String
    }
}
