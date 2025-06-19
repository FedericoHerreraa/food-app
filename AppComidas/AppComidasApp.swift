//
//  AppComidasApp.swift
//  AppComidas
//
//  Created by Federico Herrera on 15/06/2025.
//

import SwiftUI

@main
struct AppComidasApp: App {
    @StateObject var cart = Cart()
    @StateObject var favorites = Favorite()
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                FoodTabsView()
                    .environmentObject(cart)
                    .environmentObject(favorites)
                
                if cart.itemAdded {
                    ItemAddedNotification()
                }
            }
        }
    }
}
