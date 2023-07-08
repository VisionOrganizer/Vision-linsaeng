//
//  ImmersiveView.swift
//  _MyFirstApp
//
//  Created by 린생 on 2023/07/08.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {

    var body: some View {
        RealityView { content in

            if let scene = try? await Entity(named: "Immersive", in: realityKitContentBundle) {
                content.add(scene)
            }
        }
    }
}
