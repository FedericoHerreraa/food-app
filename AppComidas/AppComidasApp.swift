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
    
    var body: some Scene {
        WindowGroup {
            FoodTabsView()
                .environmentObject(cart)
        }
    }
}
