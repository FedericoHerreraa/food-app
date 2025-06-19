//
//  OrderView.swift
//  AppComidas
//
//  Created by Federico Herrera on 15/06/2025.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject private var cart: Cart
    @State var showSheet = false
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    if cart.items.isEmpty {
                        Text("Nothing in Cart yet")
                    } else {
                        ForEach(cart.items, id: \.id) { item in
                            HStack(alignment: .top) {
                                Image(item.food.img)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 50)
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(item.food.title)
                                        .font(.title3)
                                        .bold()
                                    
                                    Text("1kg. Price")
                                        .font(.subheadline)
                                        .foregroundColor(.black.opacity(0.5))
                                    
                                    HStack(spacing: 15) {
                                        Image(systemName: "minus")
                                        
                                        Text("\(item.quantity)")
                                            .padding(.horizontal, 2)
                                            .layoutPriority(1)
                                        
                                        Image(systemName: "plus")
                                            .foregroundColor(.green.opacity(0.7))
                                            .bold()
                                    }
                                    .padding(.top, 4)
                                }
                                .padding(.leading, 20)
                                
                                Spacer()
                                
                                VStack(alignment: .trailing, spacing: 40) {
                                    Text("$\(String(format: "%.2f", item.food.price))")
                                        .bold()
                                        .font(.title2)
                                    
                                }
                            }
                            .padding(20)
                        }
                        .onDelete { indexSet in
                            for index in indexSet {
                                let id = cart.items[index].id
                                cart.remove(foodId: id)
                            }
                        }
                    }
                }
                .listStyle(.plain)
                .toolbar {
                    EditButton()
                }
                .navigationTitle(Text("My Cart"))
            }
            
            
            Spacer()
            
            Button {
                showSheet = true
            } label: {
                Text("Checkout")
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
        .sheet(isPresented: $showSheet) {
            VStack {
                CheckoutOrderView()
            }
            .presentationDetents([.medium, .large])
        }
    }
}

#Preview {
    OrderView()
        .environmentObject(Cart())
}
