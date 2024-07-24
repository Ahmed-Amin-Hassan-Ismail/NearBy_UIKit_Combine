//
//  ErrorHandling.swift
//  NearBy
//
//  Created by Ahmed Amin on 24/07/2024.
//

import Foundation


enum ErrorHandling: LocalizedError {
    
    case requestNotFound
    
    var errorDescription: String? {
        switch self {
        case .requestNotFound:
            return "Request Not Found, Please Try Again Later."
        }
    }
}
