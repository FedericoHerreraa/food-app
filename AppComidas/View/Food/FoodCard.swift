//
//  FoodCard.swift
//  AppComidas
//
//  Created by Federico Herrera on 15/06/2025.
//

import SwiftUI

struct FoodCard: View {
    let title: String
    let description: String
    let price: Double
    let img: String
    
    var body: some View {
        VStack {
            Image(systemName: "carrot")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.orange)
            
            Text(title)
                .font(.title)
                .bold()
                .foregroundColor(.black)
            
            Text(description)
                .font(.headline)
                .foregroundColor(.gray)
            
            Spacer()
            
            HStack {
                Text("$\(String(price))")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.black)
                
                Spacer()
                
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .padding(7)
                    .background(.green.opacity(0.7))
                    .cornerRadius(5)
                
            }
            .padding(.horizontal, 10)
            
        }
        .padding(20)
        .frame(width: 200, height: 250)
        .background(.gray.opacity(0.1))
        .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
    }
}

#Preview {
    FoodCard(title: "Pizza", description: "Delicious pizza americana", price: 3.56, img: "img")
}
