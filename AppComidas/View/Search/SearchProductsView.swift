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
    @State var searchText: String = ""
    
    var body: some View {
        ScrollView {
            PageTitleView(title: "Find Products")
            
            SearchBarView(searchText: $searchText)
                    
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(categories) { category in
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
                        .frame(maxWidth: .infinity)
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
        }
        .padding(.horizontal, 10)
    }
}

#Preview {
    SearchProductsView()
}
