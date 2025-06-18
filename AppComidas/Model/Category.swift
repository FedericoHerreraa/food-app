//
//  Category.swift
//  AppComidas
//
//  Created by Federico Herrera on 18/06/2025.
//

import Foundation
import SwiftUI
import SwiftUICore

struct Category: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
    let backgroundColor: Color
}

let categories: [Category] = [
    Category(title: "Frash Fruits & Vegetable", imageName: "apple", backgroundColor: Color.green),
    Category(title: "Cooking Oil & Ghee", imageName: "apple", backgroundColor: Color.yellow),
    Category(title: "Meat & Fish", imageName: "apple", backgroundColor: Color.red),
    Category(title: "Bakery & Snacks", imageName: "apple", backgroundColor: Color.purple),
    Category(title: "Dairy & Eggs", imageName: "apple", backgroundColor: Color.orange),
    Category(title: "Beverages", imageName: "apple", backgroundColor: Color.blue)
]
