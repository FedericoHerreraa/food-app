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
    @Published var items: [CartItem] = [
        .init(food: Food(title: "Pizza", description: "The best pizza", price: 3.55, img: "apple"), quantity: 1),
        .init(food: Food(title: "Pasta", description: "The best pasta", price: 5.55, img: "apple"), quantity: 1)
    ]
    
    func add(_ food: Food) {
        if let index = items.firstIndex(where: { $0.food.id == food.id }) {
            items[index].quantity += 1
        } else {
            items.append(.init(food: food, quantity: 1))
        }
    }
}
