//
//  ContentView.swift
//  ZoomTransition
//
//  Created by Adrian Suryo Abiyoga on 21/01/25.
//

import SwiftUI

struct ContentView: View {
    var sharedModel = SharedModel()
    @Namespace private var animation
    var body: some View {
        GeometryReader {
            let screenSize: CGSize = $0.size
            
            NavigationStack {
                Home(screenSize: screenSize)
                    .environment(sharedModel)
                    .toolbarVisibility(.hidden, for: .navigationBar)
            }
        }
    }
}

#Preview {
    ContentView()
}
