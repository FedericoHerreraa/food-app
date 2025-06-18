//
//  FoodDetail.swift
//  AppComidas
//
//  Created by Federico Herrera on 15/06/2025.
//

import SwiftUI

struct FoodDetail: View {
    @EnvironmentObject private var cart: Cart
    @State var count: Int = 0
    let food: Food
    
    var body: some View {
        VStack {
            VStack {
                Image(food.img)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 170)
                    .clipped()
            }
            .frame(maxWidth: .infinity)
            .background(.gray.opacity(0.1))
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text(food.title)
                            .font(.title)
                            .bold()
                        
                        Text(food.description)
                            .font(.caption)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "heart")
                }
                .padding(.top, 10)
                .frame(maxWidth: .infinity)
                
                HStack {
                    HStack(spacing: 30) {
                        Image(systemName: "minus")
                            .foregroundColor(.gray)
                            .onTapGesture {
                                if count > 0 {
                                    count -= 1
                                }
                            }
                        
                        Text("\(count)")
                            .font(.title2)
                            .bold()
                        
                        Image(systemName: "plus")
                            .foregroundColor(.green)
                            .bold()
                            .onTapGesture {
                                count += 1
                            }
                    }
                    
                    Spacer()
                    
                    Text(String(format: "$%.2f", food.price))
                        .font(.title2)
                        .bold()
                }
                .padding(.top, 20)
                .frame(maxWidth: .infinity)
                
                Spacer()
                
                Button {
                    cart.add(food)
                } label: {
                    Text("Add to basket")
                        .foregroundColor(.white)
                        .bold()
                        .font(.title2)
                }
                .frame(width: 350, height: 70)
                .background(.green.opacity(0.9))
                .cornerRadius(26)
                .padding(.top, 50)
            }
            .padding(.horizontal, 30)
            
            Spacer()
        }
    }
}

#Preview {
    FoodDetail(food: Food(title: "Pizza", description: "Pizza description", price: 3.55, img: "apple"))
}
