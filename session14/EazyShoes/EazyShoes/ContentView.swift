//
//  ContentView.swift
//  EazyShoes
//
//  Created by DAMII on 10/12/24.
//

import SwiftUI

struct ContentView: View {
    
    let categories = ["Women", "Men", "Kids"]
    @State var selectedCategory = "Women"
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.orange]
        
    }
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    GeometryReader { geometry in
                        HStack (spacing: 0){
                            ForEach(categories, id: \.self) { category in
                                Button(action:{
                                    selectedCategory = category
                                }){
                                    Text(category)
                                        .font(.headline)
                                        .foregroundStyle(
                                            selectedCategory == category ? Color.orange : Color.gray)
                                }
                                .frame(width: geometry.size.width / 3, height: 30)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 4)
                                        .stroke(selectedCategory == category ? Color.orange : Color.clear, lineWidth: 2)
                                }
                                
                            }
                        }
                    }
                    .padding()
                    
                }.frame(maxHeight: 40)
                ShoeListView()
            }
           
            
            .navigationTitle("EazyShoes")
        }
    }
}

#Preview {
    ContentView().preferredColorScheme(.dark)
}
