//
//  PromotionsView.swift
//  AppComidas
//
//  Created by Federico Herrera on 15/06/2025.
//

import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject private var favorite: Favorite
    @EnvironmentObject private var cart: Cart
    @StateObject private var viewModel = FavoritesViewModel()
    
    var body: some View {
        VStack {
            NavigationView {
                List() {
                    if favorite.favorites.isEmpty {
                        Text("No favorites yet")
                    } else {
                        ForEach(favorite.favorites) { fav in
                            HStack {
                                Image(fav.img)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 30)
                                
                                
                                Text(fav.title)
                                    .font(.title3)
                                    .bold()
                            }
                        }
                        .onDelete { indexSet in
                            for index in indexSet {
                                let id = favorite.favorites[index].id
                                favorite.removeFav(id: id)
                            }
                        }
                    }
                }
                .listStyle(.plain)
                .toolbar {
                    EditButton()
                }
                .navigationTitle("My Favorites")
            }
            
            Button {
                viewModel.addAllToBasket(cart: cart, favorite: favorite)
            } label: {
                Text("Add favorites to basket")
                    .foregroundColor(.white)
                    .bold()
                    .font(.title2)
                    .frame(width: 350, height: 70)
            }
            .frame(width: 350, height: 70)
            .background(.green.opacity(0.9))
            .cornerRadius(26)
            .padding(.top, 50)
            .padding(.bottom, 10)
        }
    }
}


//#Preview {
//    FavoritesView(viewModel: FavoritesViewModel())
//}
