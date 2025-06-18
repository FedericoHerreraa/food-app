//
//  PageTitleView.swift
//  AppComidas
//
//  Created by Federico Herrera on 18/06/2025.
//

import SwiftUI

struct PageTitleView: View {
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.title2)
                .bold()
        }
        .padding(.vertical, 20)
    }
}

#Preview {
    PageTitleView(title: "My Cart")
}
