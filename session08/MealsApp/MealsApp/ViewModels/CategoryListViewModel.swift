//
//  CategoryListViewModel.swift
//  MealsApp
//
//  Created by DAMII on 19/11/24.
//

import Foundation

class CategoryListViewModel: ObservableObject {
    @Published var categories: [Category] = []
    
    private func getCategoriesInMemory() {
        /*
         
         "idCategory": "1",
         "strCategory": "Beef",
         "strCategoryThumb": "https://www.themealdb.com/images/category/beef.png",
         "strCategoryDescription": "Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]"
         */
        
        let category = Category(id: "1", name: "Beef", image: "https://www.themealdb.com/images/category/beef.png", description: "Beef is the culinary name for meat from cattle")
        categories.append(category)
    }
    
    func getCategories() {
        CategoryService().getCategories { categories, message in
            
            DispatchQueue.main.async {
                if let categories = categories {
                    self.categories = categories
                }
            }
           
        }
    }
}
