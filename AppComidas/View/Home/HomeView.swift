//
//  HomeView.swift
//  AppComidas
//
//  Created by Federico Herrera on 15/06/2025.
//

import SwiftUI

struct HomeView: View {
    @State var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Image("banner_top")
                    .resizable()
                    .frame(height: 130)
                    .padding(.horizontal, 10)
                
                
                ListTitleView(title: "Exclusive Offer", buttonText: "See all")
                
                ScrollView(.horizontal) {
                    HStack(spacing: 10) {
                        ForEach(foods) { food in
                            NavigationLink(destination: FoodDetailView(food: food)) {
                                FoodCardView(food: food)
                            }
                        }
                    }
                }
                .padding(.horizontal, 10)
                
                ListTitleView(title: "Best Selling", buttonText: "See all")
                
                ScrollView(.horizontal) {
                    HStack(spacing: 10) {
                        ForEach(foods) { food in
                            NavigationLink(destination: FoodDetailView(food: food)) {
                                FoodCardView(food: food)
                            }
                        }
                    }
                }
                .padding(.horizontal, 10)
                
                Spacer()
            }
            .navigationTitle("Home")
            .scrollIndicators(.hidden)
            .padding(.horizontal, 10)
        }
        .searchable(text: $searchText, prompt: "Search your product")
    }
}



#Preview {
    HomeView()
}
