//
//  SearchProductsViewModel.swift
//  AppComidas
//
//  Created by Federico Herrera on 18/06/2025.
//

import Foundation


final class SearchProductsViewModel: ObservableObject {
    @Published var searchText: String = "" {
        didSet {
            filterCategories()
        }
    }
    
    @Published var categoriesToShow: [Category] = categories
    
    func filterCategories() {
        if searchText.isEmpty {
            categoriesToShow = categories
        } else {
            categoriesToShow = categories.filter { category in
                category.title.lowercased().contains(searchText.lowercased())
            }
        }
    }
}
