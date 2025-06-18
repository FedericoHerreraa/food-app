//
//  ListTitleView.swift
//  AppComidas
//
//  Created by Federico Herrera on 15/06/2025.
//

import SwiftUI

struct ListTitleView: View {
    let title: String
    let buttonText: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.title2)
                .bold()
                .foregroundColor(.black.opacity(0.7))
            
            Spacer()
            
            Text(buttonText)
                .foregroundColor(.blue)
        }
        .padding(.horizontal, 12)
        .padding(.top, 20)
    }
}

#Preview {
    ListTitleView(title: "Exclusive Offer", buttonText: "See all")
}
