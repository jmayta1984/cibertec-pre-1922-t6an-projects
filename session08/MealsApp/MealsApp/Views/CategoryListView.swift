//
//  CategoryListView.swift
//  MealsApp
//
//  Created by DAMII on 19/11/24.
//

import SwiftUI

struct CategoryListView: View {
    @StateObject var viewModel: CategoryListViewModel = CategoryListViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.categories) { category in
                VStack {
                    AsyncImage(url: URL(string: category.image))
                    Text(category.name)
                }
                
            }
        }.onAppear{
            viewModel.getCategories()
        }
    }
}

#Preview {
    CategoryListView()
}
