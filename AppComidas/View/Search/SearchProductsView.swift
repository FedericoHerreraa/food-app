//
//  SearchProductsView.swift
//  AppComidas
//
//  Created by Federico Herrera on 18/06/2025.
//

import SwiftUI

let columns = [
    GridItem(.flexible(), spacing: 16),
    GridItem(.flexible(), spacing: 16)
]

struct SearchProductsView: View {
    @StateObject private var viewModel = SearchProductsViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(viewModel.categoriesToShow) { category in
                        VStack(spacing: 10) {
                            Image(category.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 100)
                            
                            Text(category.title)
                                .font(.headline)
                                .multilineTextAlignment(.center)
                        }
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: 200)
                        .background(category.backgroundColor.opacity(0.1))
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(category.backgroundColor.opacity(0.3), lineWidth: 2)
                        )
                    }
                }
                .padding()
                
            }
            .navigationTitle("Find Products")
        }
        .searchable(text: $viewModel.searchText, prompt: "Search your category")
    }
}

#Preview {
    SearchProductsView()
}
