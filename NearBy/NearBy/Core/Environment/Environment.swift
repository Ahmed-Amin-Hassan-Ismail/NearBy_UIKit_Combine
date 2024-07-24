//
//  Environment.swift
//  NearBy
//
//  Created by Ahmed Amin on 24/07/2024.
//

import Foundation



enum Environment {
    
    case test
    case production
    
    
    var baseURL: String {
        
        switch self {
        case .test:
            return ""
        case .production:
            return ""
        }
    }
}
