



import SwiftUI

struct ItemAddedNotification: View {
    @State private var visible: Bool = true

    var body: some View {
        ZStack {
            if visible {
                VStack {
                    Text("Product added")
                        .font(.title3)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(26)
                        .padding(.horizontal, 20)
                        .padding(.top, 60)
                        .transition(.move(edge: .top).combined(with: .opacity))
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                withAnimation {
                                    visible = false
                                }
                            }
                        }
                    
                    Spacer()
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
    }
}

#Preview {
    ZStack {
        Color(.systemBackground)
        ItemAddedNotification()
    }
}
