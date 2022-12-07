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

    private let allColors: [Color] = [.pink, .green, .orange, .blue]

    var body: some View {
        ScrollView {
            VStack {
                Color.clear.frame(height: 1)
                ForEach(allColors, id: \.self) { color in
                    NavigationLink(value: color) {
                        Text(color.description)
                            .font(.title)
                            .padding()
                    }
                }

//                Button("Back to the beginning") {
//                    withAnimation {
//                        path.removeAll()
//                    }
//                }
//                .padding(.top, 48)
                Spacer()
            }
        }
        .navigationTitle(color.description.capitalized)
        .navigationDestination(for: Color.self) { color in
            ContentView(color: color, path: $path)
        }
        .background(color.opacity(0.3))
//        .tint(.white)
    }
}

// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(color: .blue, path: .constant([]))
    }
}
