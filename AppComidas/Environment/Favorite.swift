//
//  Favorites.swift
//  AppComidas
//
//  Created by Federico Herrera on 18/06/2025.
//

import Foundation

@MainActor
final class Favorite: ObservableObject {
    @Published var favorites: [Food] = []
    
    func addFavorite(_ food: Food) {
        favorites.append(food)
    }
    
    func isProdFavorite(id: UUID) -> Bool {
        return favorites.contains { $0.id == id }
    }
    
    func removeFav(id: UUID) {
        return favorites.removeAll { $0.id == id }
    }
}
