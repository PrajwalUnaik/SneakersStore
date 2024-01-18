//
//  ContentView.swift
//  ShoeStore
//
//  Created by Prajwal U on 17/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""

    var body: some View {
        NavigationView {
            TabView{
                
                ScrollMain()
                    .tabItem { Image(systemName: "house") }
                    .navigationTitle("Sneakers")
                SearchView()
                    .tabItem { Image(systemName: "magnifyingglass") }
                CartView()
                    .tabItem { Image(systemName: "cart") }
                AccountView()
                    .tabItem { Image(systemName: "person") }
            }.accentColor(.black)
        }
    }
}

#Preview {
    ContentView()
}
