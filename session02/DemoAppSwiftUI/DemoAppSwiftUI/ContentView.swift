//
//  ContentView.swift
//  DemoAppSwiftUI
//
//  Created by DAMII on 17/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = ""
    @State var output: String = "Greeting"
    
    var body: some View {
        VStack {
            TextField("Ingrese su nombre", text: $name).textFieldStyle(.roundedBorder)
            
            Button(
                action: {
                    output = "Hi \(name)"
                }, label: {
                    Text("Say hi!")
                }).buttonStyle(.borderedProminent)
            Text(output)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
