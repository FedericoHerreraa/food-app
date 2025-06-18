import SwiftUI

struct FoodTabsView: View {
    @State var tabSelected: Int = 0
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundEffect = UIBlurEffect(style: .systemMaterial)
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        TabView(selection: $tabSelected) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)
            
            SearchProductsView()
                .tabItem {
                    Label("Explore", systemImage: "sparkle.magnifyingglass")
                }
                .tag(1)
            
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "cart")
                }
                .tag(2)
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
                .tag(3)
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
                .tag(4)
            
        }
        .accentColor(Color.green)
    }
}

#Preview {
    FoodTabsView()
}
