//
//  ContentView.swift
//  FocusPomodoro
//
//  Created by Aitor Salgado on 13/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var timeRemaining = 25.00
    private let timeLimit: TimeInterval = 25.00
    private var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text(String(format: "%.2f", timeRemaining))
                .font(.largeTitle)
                .fontWeight(.bold)
                .onReceive(timer) { _ in
                    if timeRemaining >= 0 {
                        timeRemaining -= 0.01
                    }
                }
            Text("")
            Text("¡Focus Time!")
                .font(.title)
            
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
