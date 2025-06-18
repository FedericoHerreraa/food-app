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
                Image(systemName: "carrot.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.orange)
                Label("Buenos Aires, Argentina", systemImage: "mappin.circle.fill")
                    .padding(.top, 10)
                
                SearchBarView(searchText: $searchText)
                
                Image("banner_top")
                    .resizable()
                    .frame(height: 130)
                    .padding(.horizontal, 10)
                
                
                ListTitleView(title: "Exclusive Offer", buttonText: "See all")
                
                ScrollView(.horizontal) {
                    HStack(spacing: 10) {
                        ForEach(foods) { food in
                            NavigationLink(destination: FoodDetail(food: food)) {
                                FoodCard(food: food)
                            }
                        }
                    }
                }
                .padding(.horizontal, 10)
                
                ListTitleView(title: "Best Selling", buttonText: "See all")
                
                ScrollView(.horizontal) {
                    HStack(spacing: 10) {
                        ForEach(foods) { food in
                            NavigationLink(destination: FoodDetail(food: food)) {
                                FoodCard(food: food)
                            }
                        }
                    }
                }
                .padding(.horizontal, 10)
                
                Spacer()
            }
            .scrollIndicators(.hidden)
            .padding(.horizontal, 10)
        }
    }
}



#Preview {
    HomeView()
}
