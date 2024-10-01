//
//  FruitsView.swift
//  GreetingSwiftUI
//
//  Created by DAMII on 1/10/24.
//

import SwiftUI

struct FruitsView: View {
    @Binding var juice: String
    private let fruits = ["🍇", "🍓", "🍊", "🍌"]
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("Choose a flavor").padding()
            HStack {
                ForEach(fruits, id: \.self) { fruit in
                    Button(action: {
                        juice = fruit
                        dismiss()
                    }) {
                        Text(fruit)
                    }.padding()
                }
            }
        }
    }
}

#Preview {
    FruitsView(juice: .constant(""))
}
