//
//  HomeView.swift
//  GreetingSwiftUI
//
//  Created by DAMII on 1/10/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            GreetingView().tabItem {
                Label("Greeting", systemImage: "1.circle")
            }
            JuiceView().tabItem {
                Label("Juice", systemImage: "2.circle")
            }
        }
    }
}

#Preview {
    HomeView()
}
