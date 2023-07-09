//
//  ContentView.swift
//  _MyFirstApp
//
//  Created by 린생 on 2023/07/08.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var solarSystem: SolarSystem
    @State var showImmersiveSpace: Bool = false

    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImeersiveSpace

    var body: some View {
        NavigationSplitView {
            List {
                Text("Item_1")
                    .onTapGesture {
                        print("123")
                    }

                Text("Item_2")

            }.navigationTitle("Sidebar")
        } detail: {

            VStack(content: {
                Model3D(named: "Scene", bundle: realityKitContentBundle)
                    .padding(.bottom, 50)
                // 왜 bottom인데 올라갈까?

                Text("Hello world!")

                Toggle("Show ImmersiveSpace", isOn: $showImmersiveSpace)
                    .toggleStyle(.button)
                    .padding(.top, 50)

            })
            .navigationTitle("Content")
        }.onChange(of: showImmersiveSpace) { oldValue, newValue in
            Task {
                if newValue {
                    // 비동기
                    await openImmersiveSpace(id: "Immersive")

                    // 왜 버벅이지?
//                    await openImmersiveSpace(value: solarSystem.id)
                    
                } else {
                    await dismissImeersiveSpace()
                }
            }
        }
    }
}

