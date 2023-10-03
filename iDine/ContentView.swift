//
//  ContentView.swift
//  iDine
//
//  Created by AP on 03/10/23.
//

import SwiftUI

struct ContentView: View {
    let menus = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        VStack {
            NavigationStack {
                List {
                    ForEach(menus) { section in
                        Section(section.name) {
                            ForEach(section.items) { item in
                                NavigationLink(value: item) {
                                    ItemRow(menu: item)
                                }
                            }
                        }
                    }
                }
                .navigationDestination(for: MenuItem.self) { item in
                    ItemDetail(item: item)
                }
                .navigationTitle("iDine")
                .listStyle(PlainListStyle())
            }
        }
    }
}

#Preview {
    ContentView()
}
