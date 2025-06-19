//
//  FavoritesViewModel.swift
//  AppComidas
//
//  Created by Federico Herrera on 18/06/2025.
//

import Foundation

@MainActor
final class FavoritesViewModel: ObservableObject {
    func addAllToBasket(cart: Cart, favorite: Favorite) {
        for item in favorite.favorites {
            cart.add(item)
        }
    }
}
