//
//  TabBarView.swift
//  Study Buddy 2.0
//
//  Created by Journey Galore on 6/20/24.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            NavigationView {
                ActivitiesContentView(activtiesData: Activities(data: ActivitiesMockStore.activityData, items: ActivitiesMockStore.activities))
            }
            .tabItem {
                Image("activity-1")
                    .resizable()
                Text("Activities")
            }
            .tag(0)
            
            NavigationView {
                ActivitiesCartView(ShoppingCartItemsData: ActivitiesCart(data: ActivitiesMockStore.shoppingCartData))
            }
            .tabItem {
                Image(systemName: "sparkles.square.filled.on.square")
                Text("Practice")
            }
            .tag(1)
            
            NavigationView {
                AssistanceView()
            }
            .tabItem {
                Image(systemName: "message")
                Text("Assistance")
            }
            .tag(2)
            
            NavigationView {
                // Your account view here
            }
            .tabItem {
                Image("profile-glyph-icon")
                Text("Account")
            }
            .tag(3)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
