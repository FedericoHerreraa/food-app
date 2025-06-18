//
//  SearchBarView.swift
//  AppComidas
//
//  Created by Federico Herrera on 18/06/2025.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var searchText: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray.opacity(0.1))
                .frame(height: 50)
            
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search Store", text: $searchText)
            }
            .padding(.horizontal, 16)
        }
        .padding(10)
    }
}

#Preview {
    SearchBarView(searchText: .constant(""))
}
