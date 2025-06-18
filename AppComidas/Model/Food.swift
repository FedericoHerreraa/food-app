//
//  Food.swift
//  AppComidas
//
//  Created by Federico Herrera on 15/06/2025.
//

import Foundation


struct Food: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let price: Double
    let img: String
}


let foods: [Food] = [
    .init(title: "Pizza", description: "Deliciosa pizza napolitana", price: 3.57, img: "apple"),
    .init(title: "Pasta", description: "Pasta con salsa de tomate", price: 2.54, img: "apple"),
    .init(title: "Sushi", description: "Sushi fresquito", price: 6.88, img: "apple"),
    .init(title: "Hamburguesas", description: "Hamburguesas caseras", price: 7.22, img: "apple"),
    .init(title: "Hot Dog", description: "Hot dog casero", price: 9.22, img: "apple"),
]
    
