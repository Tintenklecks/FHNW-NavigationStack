//
//  MainView.swift
//  FHNW-NavigationStack
//
//  Created by Ingo Boehme on 07.12.22.
//

import SwiftUI

// MARK: - MainView

struct MainView: View {
    @State private var navigationPath: [Color] = []
    var joinedColors: String {
        navigationPath
            .map { $0.description}
            .joined(separator: " - ")
    }
    
    
    var body: some View {
        ZStack {
            NavigationStack(path: $navigationPath) {
                ContentView(color: .pink, path: $navigationPath)
            }
            VStack {
                Spacer()
                Text("Path: \(joinedColors)")
            }
        }

    }
}


// MARK: - MainView_Previews

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
