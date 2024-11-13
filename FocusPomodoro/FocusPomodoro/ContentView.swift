//
//  ContentView.swift
//  FocusPomodoro
//
//  Created by Aitor Salgado on 13/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("25:00")
            Text("Focus")
        }
        .padding()
        HStack {
            Button {
                
            } label: {
                Image(systemName: "play")
            }
            .buttonStyle(.bordered)
            .tint(.red)
            Button {
                
            } label: {
                Image(systemName: "pause")
            }
            .buttonStyle(.bordered)
            .tint(.green)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
