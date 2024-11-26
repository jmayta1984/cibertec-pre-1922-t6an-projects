//
//  HttpRequestHelper.swift
//  MealsApp
//
//  Created by DAMII on 19/11/24.
//

import Foundation

class HttpRequestHelper {
    func GET(url: String, completion: @escaping (Bool, Data?, String?) -> Void ) {
        guard let url = URL(string: url) else {
            completion(false, nil, "Error: URL cannot be created")
            return
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        
        let session = URLSession.shared
        
        session.dataTask(with: urlRequest) { data, response, error in
            guard error == nil else {
                completion(false, nil, "Error: problem calling GET")
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(false, nil, "Error: HTTP request failed")
                return
            }
            
            guard let data = data else {
                completion(false, nil, "Error: no data")
                return
            }
            
            completion(true, data, nil)
        
        }.resume()
        
        
    }
}
