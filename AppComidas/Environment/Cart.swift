//
//  Cart.swift
//  AppComidas
//
//  Created by Federico Herrera on 17/06/2025.
//

import Foundation


struct CartItem: Identifiable {
    var id = UUID()
    var food: Food
    var quantity: Int
}

@MainActor
final class Cart: ObservableObject {
    @Published var items: [CartItem] = []
    @Published var itemAdded = false
    
    func add(_ food: Food) {
        itemAdded.toggle()
        if let index = items.firstIndex(where: { $0.food.title == food.title }) {
            items[index].quantity += 1
        } else {
            items.append(.init(food: food, quantity: 1))
        }
    }
    
    func remove(foodId: UUID) {
        items.removeAll { $0.id == foodId }
    }
}
