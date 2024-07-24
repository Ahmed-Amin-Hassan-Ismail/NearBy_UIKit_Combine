//
//  EndPoint.swift
//  NearBy
//
//  Created by Ahmed Amin on 24/07/2024.
//

import Foundation


enum APIMethod: String {
    
    case get = "GET"
    case post = "POST"
}

enum APIEncoding {
    
    case url
    case json
    case query
}

struct EndPoint {
    
    var path: String
    var method: APIMethod
    var parameters: [String: Any]?
    var encoding: APIEncoding?
    var headers: [String: String]?
    
    var url: String {
        
        return "\(Environment.test.baseURL)\(path)"
    }
    
}
