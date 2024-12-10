//
//  ShoeListViewModel.swift
//  EazyShoes
//
//  Created by DAMII on 10/12/24.
//

import Foundation

class ShoeListViewModel: ObservableObject {
    @Published var shoes:[Shoe] = []
    @Published var message: String = ""
    
    private let service = ShoeService()
    func getShoes() {
        service.getShoes { shoes, message in
            DispatchQueue.main.async {
                if let shoes = shoes {
                    self.shoes = shoes
                }
                if let message = message {
                    self.message = message
                }
            }
            
        }
    }
}
