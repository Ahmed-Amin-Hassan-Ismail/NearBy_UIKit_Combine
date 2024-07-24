//
//  StoryboardMakeable.swift
//  NearBy
//
//  Created by Ahmed Amin on 24/07/2024.
//

import Foundation
import UIKit

protocol StoryboardMakable {
    
    associatedtype StoryboardMakeableType
    static var storyboardName: String { get }
    static func initializeFromStoryboard() -> StoryboardMakeableType
    
}


extension StoryboardMakable where Self: UIViewController {
    
    static func initializeFromStoryboard() -> StoryboardMakeableType {
        
        let viewControllerId = String(describing: self)
        return make(with: viewControllerId)
    }
    
    static func make(with viewControllerId: String) -> StoryboardMakeableType {
        
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle(for: self))
        
        guard let viewController = storyboard.instantiateViewController(withIdentifier: viewControllerId) as? StoryboardMakeableType else {
            
            fatalError("Did not find \(viewControllerId) in \(storyboardName)")
        }
        
        return viewController
        
    }
}

