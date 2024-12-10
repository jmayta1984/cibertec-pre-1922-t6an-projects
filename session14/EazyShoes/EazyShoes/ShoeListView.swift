//
//  ShoeListView.swift
//  EazyShoes
//
//  Created by DAMII on 10/12/24.
//

import SwiftUI

struct ShoeListView: View {
    
    @StateObject var viewModel = ShoeListViewModel()
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(viewModel.shoes) { shoe in
                    VStack {
                        AsyncImage(url: URL(string: shoe.image)) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 160, height: 160)
                                .cornerRadius(8)
                        } placeholder: {
                            ProgressView()
                                .frame(width: 160, height: 160)
                            
                        }
                        Text(shoe.name)
                        Text(shoe.brand)
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: 200)
                    .background(RoundedRectangle(cornerRadius: 20).foregroundStyle(Color.gray.opacity(0.2)))
                }
            }
            
        } .onAppear{
            viewModel.getShoes()
        }
    }
}

#Preview {
    ShoeListView().preferredColorScheme(.dark)
}
