//
//  ContentView.swift
//  GreetingSwiftUI
//
//  Created by DAMII on 1/10/24.
//

import SwiftUI

struct GreetingView: View {
    @State var name: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Enter name", text: $name ).padding().textFieldStyle(.roundedBorder)
                NavigationLink(destination: { Text(name) }) {
                    Text("Say hi" )
                }
            }.navigationTitle("Greeting")
        }
        
    }
}

#Preview {
    GreetingView()
}
