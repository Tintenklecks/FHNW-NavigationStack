//
//  MainView.swift
//  FHNW-NavigationStack
//
//  Created by Ingo Boehme on 07.12.22.
//

import SwiftUI

// MARK: - MainView

struct MainView: View {

  @State private var showDetail = false

  var body: some View {
    
    NavigationStack {
      VStack {
          Image(systemName: "car").font(.system(size: 100))
            .onTapGesture {
              showDetail = true
            }
        }
        .navigationTitle("Startseite")
        .navigationDestination(isPresented: $showDetail) {
            DetailView()
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
