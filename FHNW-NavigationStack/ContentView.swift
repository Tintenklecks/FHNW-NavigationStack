//
//  ContentView.swift
//  FHNW-NavigationStack
//
//  Created by Ingo Boehme on 07.12.22.
//

import SwiftUI

// MARK: - ContentView

struct ContentView: View {
    let color: Color
    @Binding var path: [Color]

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Color.clear.frame(height: 1) // Trick for Full Width ;)

                NavigationLink(value: Color.pink) { Text("PINK") }
                NavigationLink(value: Color.green) { Text("GREEN") }
                NavigationLink(value: Color.orange) { Text("ORANGE") }
                NavigationLink(value: Color.blue) { Text("BLUE") }

                Button("Back to the beginning") {
                    path.removeAll()
                }
                .buttonStyle(BorderedButtonStyle())
                .padding(.top, 48)
                Spacer()
            }
        }
        .font(.title)
        .navigationTitle(color.description.capitalized)
        .navigationDestination(for: Color.self) { color in
            ContentView(color: color, path: $path)
        }
        .background(color.opacity(0.3))
    }
}

// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(color: .blue, path: .constant([]))
    }
}
