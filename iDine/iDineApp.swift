//
//  iDineApp.swift
//  iDine
//
//  Created by AP on 03/10/23.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(order)
        }
    }
}
