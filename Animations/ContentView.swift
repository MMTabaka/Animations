//
//  ContentView.swift
//  Animations
//
//  Created by Milosz Tabaka on 18/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var enabled = false
    
    var body: some View {
        Button("Tap me") {
            enabled.toggle()
        }
        .padding(50)
        .foregroundColor(.white)
        .background(enabled ? .blue : .red)
        .animation(nil, value: enabled)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.easeInOut(duration: 2), value: enabled)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
