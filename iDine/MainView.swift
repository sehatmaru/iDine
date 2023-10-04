//
//  MainView.swift
//  iDine
//
//  Created by AP on 04/10/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView().tabItem { Label("Menu", systemImage: "list.dash") }
            OrderView().tabItem { Label("Order", systemImage: "square.and.pencil") }
        }
    }
}

#Preview {
    MainView().environmentObject(Order())
}
