//
//  FoodDetail.swift
//  AppComidas
//
//  Created by Federico Herrera on 15/06/2025.
//

import SwiftUI

struct FoodDetailView: View {
    @EnvironmentObject private var cart: Cart
    @EnvironmentObject private var favorite: Favorite
    @State var count: Int = 0
    @State var toggleOn: Bool = false
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
                    
                    Button {
                        favorite.addFavorite(food)
                    } label: {
                        Image(systemName: favorite.isProdFavorite(id: food.id) ? "heart.fill" :"heart")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 20)
                    }
                }
                .padding(.top, 10)
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 20)
                
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
                .padding(.horizontal, 20)
                
                VStack {
                    ForEach(food.extras) { extra in
                        Toggle(isOn: $toggleOn) {
                            Text(extra.name)
                        }
                    }
                }
                .padding(.top, 20)
                .padding(.horizontal, 20)
                
                List {
                    Section(header: Text("Información Nutricional")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                    ) {
                        Text("Calorías: \(food.nutrition.calories)")
                            .font(.headline)
                        
                        Text("Proteínas: \(String(format: "%.1f g", food.nutrition.protein))")
                            .font(.headline)
                        
                        Text("Carbohidratos: \(String(format: "%.1f g", food.nutrition.carbs))")
                            .font(.headline)
                        
                        Text("Grasas: \(String(format: "%.1f g", food.nutrition.fat))")
                            .font(.headline)
                    }
                }
                .listStyle(.plain)
                .padding(.top, 10)
                
                
                
                
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
            
            
            Spacer()
        }
    }
}

#Preview {
    FoodDetailView(food: Food(
        title: "Pizza",
        description: "Deliciosa pizza napolitana",
        price: 3.57,
        img: "apple",
        nutrition: NutritionInfo(calories: 850, protein: 22, carbs: 90, fat: 35),
        extras: [
            ExtraOption(name: "Extra queso", price: 0.5),
            ExtraOption(name: "Aceitunas", price: 0.3)
        ]
    )).environmentObject(Favorite())
}
