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
    let nutrition: NutritionInfo
    let extras: [ExtraOption]
}

struct NutritionInfo {
    let calories: Int
    let protein: Double
    let carbs: Double
    let fat: Double
}

struct ExtraOption: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
}

let foods: [Food] = [
    .init(
        title: "Pizza",
        description: "Deliciosa pizza napolitana",
        price: 3.57,
        img: "apple",
        nutrition: .init(calories: 850, protein: 22, carbs: 90, fat: 35),
        extras: [
            .init(name: "Extra queso", price: 0.5),
            .init(name: "Aceitunas", price: 0.3)
        ]
    ),
    .init(
        title: "Pasta",
        description: "Pasta con salsa de tomate",
        price: 2.54,
        img: "apple",
        nutrition: .init(calories: 600, protein: 12, carbs: 80, fat: 15),
        extras: [
            .init(name: "Queso rallado", price: 0.4),
            .init(name: "Albóndigas", price: 1.2)
        ]
    ),
    .init(
        title: "Sushi",
        description: "Sushi fresquito",
        price: 6.88,
        img: "apple",
        nutrition: .init(calories: 450, protein: 18, carbs: 55, fat: 10),
        extras: [
            .init(name: "Salsa de soja", price: 0.1),
            .init(name: "Jengibre", price: 0.2)
        ]
    ),
    .init(
        title: "Hamburguesas",
        description: "Hamburguesas caseras",
        price: 7.22,
        img: "apple",
        nutrition: .init(calories: 950, protein: 30, carbs: 65, fat: 45),
        extras: [
            .init(name: "Panceta", price: 1.0),
            .init(name: "Huevo frito", price: 0.8)
        ]
    ),
    .init(
        title: "Hot Dog",
        description: "Hot dog casero",
        price: 9.22,
        img: "apple",
        nutrition: .init(calories: 700, protein: 15, carbs: 50, fat: 30),
        extras: [
            .init(name: "Cebolla frita", price: 0.3),
            .init(name: "Mostaza extra", price: 0.2)
        ]
    )
]
    
