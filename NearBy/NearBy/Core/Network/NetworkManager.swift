//
//  NetworkManager.swift
//  NearBy
//
//  Created by Ahmed Amin on 24/07/2024.
//

import Foundation
import Combine

class NetworkManager {
    
    static func request<T: Decoder>(endPoint: EndPoint) -> AnyPublisher {
        
        guard let escapedAddress = endPoint.url.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed),
              let url = URL(string: escapedAddress) else {
            
            return Fail(error: ErrorHandling.requestNotFound).eraseToAnyPublisher()
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = endPoint.method.rawValue
        
        if let parameters = endPoint.parameters {
            do {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
            } catch {
                return Fail(error: ErrorHandling.requestNotFound).eraseToAnyPublisher()
            }
        }
        
        return URLSession
            .shared
            .dataTaskPublisher(for: urlRequest)
            .map({ $0.data })
            .decode(type: T.self, decoder: JSONDecoder())
            .catch({ _ in Fail(error: ErrorHandling.requestNotFound).eraseToAnyPublisher() })
            .eraseToAnyPublisher()
        
        
    }
}
