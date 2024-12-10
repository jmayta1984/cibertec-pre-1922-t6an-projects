//
//  ShoeService.swift
//  EazyShoes
//
//  Created by DAMII on 10/12/24.
//

import Foundation

class ShoeService {
    
    
    func getShoes(completion: @escaping ([Shoe]?, String?) -> Void) {
        let url = "https://sugary-wool-penguin.glitch.me/shoes?gender=WOMEN"
        
        HttpRequestHelper().GET(url: url) { success, data, message in
            
            if (success) {
                guard let data = data else {
                    completion(nil, message ?? "Error: no data")
                    return
                }
                
                do {
                    let shoeResponses = try JSONDecoder().decode([ShoeResponse].self, from: data)
                    let shoes = shoeResponses.map { response in
                        response.toShoe()
                    }
                    completion(shoes, nil)
                } catch let error {
                    completion(nil, "Error: \(error.localizedDescription) ")
                }
            } else {
                completion(nil, message ?? "Error: no response")
            }
        }
    }
}
