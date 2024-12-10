//
//  ShoeResponse.swift
//  EazyShoes
//
//  Created by DAMII on 10/12/24.
//

import Foundation

struct ShoeResponse: Decodable {
    let id: Int
    let name: String
    let brand: String
    let price: Int
    let image: String
    
    func toShoe() -> Shoe {
        Shoe(id: id, name: name, brand: brand, price: price, image: image)
    }
}
