//
//  OrderView.swift
//  iDine
//
//  Created by AP on 03/10/23.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                }
                
                Section {
                    NavigationLink("Place Order") {
                        CheckoutView()
                    }.disabled(order.total == 0)
                }
            }
        }
        .navigationTitle("Order")
    }
}

#Preview {
    OrderView().environmentObject(Order())
}
