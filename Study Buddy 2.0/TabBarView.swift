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
            .tag(0)
            .tabItem {
                Image("activity-1")
                    .resizable()
                Text("Activities")
            }
            
            NavigationView {
                ActivitiesCartView(ShoppingCartItemsData: ActivitiesCart(data: ActivitiesMockStore.shoppingCartData))
            }
            .tag(1)
            .tabItem {
                Image(systemName: "sparkles.square.filled.on.square")
                Text("Practice")
            }
            
            NavigationView {
                     
                  }
                   .tag(2)
                    .tabItem {
                        Image("message")
                        Text("Assistance")
                }
            NavigationView {
                     
                  }
                   .tag(3)
                    .tabItem {
                        Image("profile-glyph-icon")
                        Text("Account")
                }
        }
    }
}
