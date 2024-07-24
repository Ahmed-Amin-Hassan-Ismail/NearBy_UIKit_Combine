//
//  HomeVC.swift
//  NearBy
//
//  Created by Ahmed Amin on 24/07/2024.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

}

// MARK: - StoryboardMakable

extension HomeVC: StoryboardMakable {
    
    typealias StoryboardMakeableType = HomeVC
    static var storyboardName: String = Storyboard.homeVC
}
