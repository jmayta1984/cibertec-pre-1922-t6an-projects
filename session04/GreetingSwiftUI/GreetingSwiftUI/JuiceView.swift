//
//  JuiceView.swift
//  GreetingSwiftUI
//
//  Created by DAMII on 1/10/24.
//

import SwiftUI

struct JuiceView: View {
    @State var juice: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: {
                    FruitsView(juice: $juice)
                }) {
                    Text("Order juice").padding()
                }
                Text(juice)
            }.navigationTitle("Fruit juice")
        }
        
    }
}

#Preview {
    JuiceView()
}
