//
//  MainView.swift
//  FHNW-NavigationStack
//
//  Created by Ingo Boehme on 07.12.22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            ContentView(color: .pink, colorName: "Pink")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
