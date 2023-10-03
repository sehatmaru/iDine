//
//  ItemRow.swift
//  iDine
//
//  Created by AP on 03/10/23.
//

import SwiftUI

struct ItemRow: View {
    let menu: MenuItem
    let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    
    var body: some View {
        HStack{
            Image(menu.thumbnailImage).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(.gray, lineWidth: 2))
            
            VStack(alignment: .leading) {
                Text(menu.name).font(.headline)
                Text("$\(menu.price)")
            }
            
            Spacer()
            
            ForEach(menu.restrictions, id: \.self) { restriction in
                Text(restriction).font(.caption).fontWeight(.black).padding(5).background(colors[restriction, default: .black]).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    ItemRow(menu: MenuItem.example)
}
